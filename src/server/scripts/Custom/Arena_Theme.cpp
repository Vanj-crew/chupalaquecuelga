#include "ScriptPCH.h"

#define OFFSET_THEME 10000
int length = 0;

class npc_gurubashi_theme : public CreatureScript
{
private:    
    typedef std::list<Creature *> CRL;    
    typedef std::list<GameObject *> GOL;    
    CRL creaturelist;    
    GOL gameobjectlist;

    int GetThemeChangeReady(Creature *_Creature)
    {
        QueryResult result;
        result = WorldDatabase.PQuery("SELECT `time`, `refresh` FROM `gurubashi_givers` WHERE entry = %u", _Creature->GetEntry());        
        
        if (result)
        {
            Field *fields = result->Fetch();
            return fields[0].GetInt32() + fields[1].GetInt32();
        }
        else return 0;
    }

public:
    npc_gurubashi_theme() : CreatureScript("npc_gurubashi_theme") { }

    bool OnGossipHello(Player *player, Creature *_creature)
    {
        char msg[100];
        int iTimeLast = GetThemeChangeReady(_creature);

        if (iTimeLast <= time(0))
        {
            QueryResult result;
            result = WorldDatabase.PQuery("SELECT `id`, `name` FROM `gurubashi_themes` WHERE giver = %u", _creature->GetEntry());            
            
            if (result)
            {
                do
                {
                    Field *fields = result->Fetch();
                    player->ADD_GOSSIP_ITEM(4, fields[1].GetString(), GOSSIP_SENDER_MAIN, OFFSET_THEME + fields[0].GetInt32());                
                } while (result->NextRow());
            }
        }
        else
        {
            int iTimeRem = iTimeLast - time(0);

            if (iTimeRem >= 60)
                sprintf(msg, "Next change possible in less than minute", iTimeRem / 60, iTimeRem - ((iTimeRem / 60) * 60));            
            else
                sprintf(msg, "Next change possible in %u minute/s.", iTimeRem);            
            player->ADD_GOSSIP_ITEM(0, msg, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);  
        }
        player->ADD_GOSSIP_ITEM(0, "Good Bye", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);        
        player->SEND_GOSSIP_MENU(1,_creature->GetGUID());        
        return true;
    }

    bool OnGossipSelect(Player *player, Creature *_creature, uint32 sender, uint32 action)
    {
        if (action > OFFSET_THEME)
        {
            if (GetThemeChangeReady(_creature) <= time(0))
            {
                int iTimeCur = time(0);
                QueryResult result;

                WorldDatabase.PExecute("UPDATE `gurubashi_givers` SET `time` = %u WHERE `entry` = %u", iTimeCur, _creature->GetEntry());                
                
                // GameObjects
                result = WorldDatabase.PQuery("SELECT `x`, `y`, `z`, `o`, `entry` FROM `gurubashi_spawns_gameobject` WHERE `theme` = %u", action - OFFSET_THEME);                
                GOL::iterator l;                
                for (l = gameobjectlist.begin(); l != gameobjectlist.end(); ++l)                
                {                    
                    GameObject * go = *l;                    
                    go->Delete();                
                }
                gameobjectlist.clear();   
                
                if (result)   
                {  
                    _creature->MonsterSay("Spawning gameobjects..", LANG_UNIVERSAL, player->GetGUID());                                        
                    do                    
                    {                        
                        Field *fields = result->Fetch(); 
                        GameObject * gob = _creature->SummonGameObject(fields[4].GetInt32(), fields[0].GetFloat(), fields[1].GetFloat(), fields[2].GetFloat(), fields[3].GetFloat(), 0, 0, 0, 0, 2592000);      
                        gameobjectlist.push_back(gob);   
                    } while (result->NextRow());               
                }

                // Creatures                
                result = WorldDatabase.PQuery("SELECT `x`, `y`, `z`, `o`, `entry`, `spawndist` FROM `gurubashi_spawns_creature` WHERE `theme` = %u", action - OFFSET_THEME);     
                CRL::iterator i;        
                for (i = creaturelist.begin(); i != creaturelist.end(); ++i)  
                {                   
                    Creature * cr = *i;             
                    cr->ForcedDespawn(0);    
                }
                creaturelist.clear();    
                if (result) 
                {                
                    do        
                    {           
                        Field * fields = result->Fetch();   
                        Creature * tempCr = _creature->SummonCreature(fields[4].GetInt32(), fields[0].GetFloat(), fields[1].GetFloat(), fields[2].GetFloat(), fields[3].GetFloat(), TEMPSUMMON_MANUAL_DESPAWN, 0);    
                        tempCr->GetMotionMaster()->MoveRandom(fields[5].GetFloat());   
                        creaturelist.push_back(tempCr);       
                    } while (result->NextRow()); 
                }            
                player->PlayerTalkClass->CloseGossip(); 
            }          
            else
            {     
                OnGossipHello(player, _creature); 
                _creature->MonsterSay("Theme already selected. Please wait.", LANG_UNIVERSAL, player->GetGUID());    
            }     
        }      
        else   
        {            
            switch (action)
            {           
                case GOSSIP_ACTION_INFO_DEF + 1: 
                    player->PlayerTalkClass->CloseGossip();
                    break; 
                case GOSSIP_ACTION_INFO_DEF + 2:
                    OnGossipHello(player, _creature);
                    break; 
            }     
        }
        return true;
    }
};


// Mortal Kombat
#define GOSSIP_ARENA_START              "Empezo La Arena!"
#define GOSSIP_DEATHMATCH_START         "Comienzo Deathmatch!"
#define GOSSIP_ARENA_SUSPEND            "Se ha suspendido la Arena!"

enum Sounds
{
    SOUND_GONG                          = 12827,
    SOUND_ARENA_START                   = 11832,
    SOUND_BONK                          = 11903,
    SOUND_FIRE                          = 12559,
    SOUND_ELEMENTAL_SPAWN               = 15881
};

#define MAX_ARENA_TIME                  600000 // 10 minutos

bool ArenaStarted = false;
bool isDeathmatch;

uint32 GmGUID;

enum Mobs
{
    NPC_GROUND_SCORCH                   = 33221,
    NPC_RED_BONUS                       = 151001,
    NPC_BLUE_BONUS                      = 151002,
    NPC_GREEN_BONUS                     = 151003
};

enum Actions
{
    ACTION_ARENA_START,
    ACTION_ARENA_SUSPEND,
};

const Position BonusPos[4] =
{
{-13179.26f, 263.04f, 21.87f, 2.67f},
{-13227.64f, 287.87f, 21.86f, 5.81f},
{-13192.98f, 295.81f, 21.87f, 4.25f},
{-13213.84f, 255.14f, 21.87f, 1.08f}
};

/*------------------------------------------------------*
 *                    MK Arena Master                   *
 *------------------------------------------------------*/

class mk_arena_master : public CreatureScript
{
public:
    mk_arena_master(): CreatureScript("mk_arena_master"){ }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)    
    {    
        if (pPlayer && pPlayer->isGameMaster())
        {
            if (!ArenaStarted)
            {
                GmGUID = pPlayer->GetGUID();
                pPlayer->PrepareQuestMenu(pCreature->GetGUID());
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARENA_START, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_DEATHMATCH_START, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);
                pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());               
            }
            else
            {
                GmGUID = pPlayer->GetGUID();
                pPlayer->PrepareQuestMenu(pCreature->GetGUID());
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_ARENA_SUSPEND, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
            }   
        }
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
        if (pPlayer)
            pPlayer->CLOSE_GOSSIP_MENU();

        if (!ArenaStarted)
        {
            ArenaStarted = true;
            switch(uiAction)
            {
                case GOSSIP_ACTION_INFO_DEF:
                    isDeathmatch = false;
                    pCreature->AI()->DoAction(ACTION_ARENA_START);
                    break;
                case GOSSIP_ACTION_INFO_DEF+1:
                    isDeathmatch = true;
                    pCreature->MonsterYell("DEATHMATCH", 0, 0);
                    pCreature->AI()->DoAction(ACTION_ARENA_START);
                    break;
            }
        }
        else
        {
            ArenaStarted = false;
            pCreature->AI()->DoAction(ACTION_ARENA_SUSPEND);
        }

        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mk_arena_masterAI (pCreature);
    }    
    
    struct mk_arena_masterAI : public ScriptedAI
    {
        mk_arena_masterAI(Creature *c) : ScriptedAI(c)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            me->SetVisible(false);
            me->SetFlying(true);
        }
        
        uint32 uiTimer;
        uint32 uiArenaTimer;
        uint32 uiStep;
        uint32 uiFireTimer;
        uint32 uiBonusTimer;
        uint8 bonusOrder[3];
        uint8 bonusCount;
        uint32 Team1;
        uint32 Team2;
        uint64 GetGUID;
        
        std::list<Unit*> Team1List;
        std::list<Unit*> Team2List;
        
        void UpdateAI(const uint32 diff)
        {
            if (!ArenaStarted)
                return;

            if (!isDeathmatch && uiArenaTimer > MAX_ARENA_TIME)
            {
                ArenaStarted = false;
                me->AI()->DoAction(ACTION_ARENA_SUSPEND);
            }
            else uiArenaTimer += diff;

            if (uiTimer <= diff)
            {
                switch (uiStep)
                {
                    case 1:
                        me->MonsterYell("La arena Comenzara en 30 segundos!", 0, 0);
                        ++uiStep;
                        uiTimer = 20000;
                        break;
                    case 2:
                        me->MonsterYell("La arena Comenzara en 10 segundos!", 0, 0);
                        ++uiStep;
                        uiTimer = 7000;
                        break;
                    case 3:
                        me->MonsterYell("3", 0, 0);
                        DoPlaySoundToSet(me, SOUND_BONK);
                        ++uiStep;
                        uiTimer = 1000;
                        break;
                    case 4:
                        me->MonsterYell("2", 0, 0);
                        DoPlaySoundToSet(me, SOUND_BONK);
                        ++uiStep;
                        uiTimer = 1000;
                        break;
                    case 5:
                        me->MonsterYell("1", 0, 0);
                        DoPlaySoundToSet(me, SOUND_BONK);
                        ++uiStep;
                        uiTimer = 1000;
                        break;
                    case 6:
                        me->MonsterYell("GO!", 0, 0);
                        DoPlaySoundToSet(me, SOUND_GONG);
                        DoPlaySoundToSet(me, SOUND_ARENA_START);
                        uiArenaTimer = 0;
                        uiStep = 0;
                        break;
                    default:
                        break;
                }
            }
            else uiTimer -= diff;
            
            if (uiFireTimer <= diff)
            {
                me->SummonCreature(NPC_GROUND_SCORCH, -13203.50f, 275.29f, 21.87f, 0, TEMPSUMMON_TIMED_DESPAWN, 15000);
                DoPlaySoundToSet(me, SOUND_FIRE);
                uiFireTimer = urand(60000, 90000);
            }
            else uiFireTimer -= diff;

            if (uiBonusTimer <= diff)
            {
                SpawnBonus();
                uiBonusTimer = 45000;
            }
            else uiBonusTimer -= diff;
        }
        
        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_ARENA_START:
                {
                    Team1 = NULL;
                    Team2 = NULL;
                    Team1List.empty();
                    Team2List.empty();

                    Map::PlayerList const& pList = me->GetMap()->GetPlayers();                   

                    for (Map::PlayerList::const_iterator itr = pList.begin(); itr != pList.end(); ++itr)
                    {
                        Player* pTarget = itr->getSource();
                        //Player* pTarget = Player::GetPlayer(itr->getSource()->GetGUID());

                        if (!pTarget || pTarget->isGameMaster() || !pTarget->IsWithinDist(me, 38))
                            continue;

                        // Remueve Cooldows y Debuf
                        pTarget->RemoveAllSpellCooldown();
                        pTarget->RemoveAurasDueToSpell(57723); // Exhaustion
                        pTarget->RemoveAurasDueToSpell(57724); // Sated
                        pTarget->RemoveAurasDueToSpell(25771); // Forbearance
                        pTarget->RemoveAurasDueToSpell(11196); // Recently Bandaged

                        // Check Arena Themes
                        if (Team1List.size() < 3)
                        {
                            Team1List.empty();
                            pTarget->GetPartyMembers(Team1List); // Arena Team 1
                        }
                        else if (Team2List.size() < 3 && pTarget->IsHostileTo(*(Team1List.begin())))
                        {
                            Team2List.empty();
                            pTarget->GetPartyMembers(Team2List); // Arena Team 2
                        }
                    }

                    if (Team1List.size() > 2 && Team2List.size() > 2)
                    {
                        for (uint32 i = 0; i < 2; ++i)
                        {
                            uint32 TeamMemberGUID;
                            uint32 TeamID;
                            if (i == 0)
                                TeamMemberGUID = (*(Team1List.begin()))->GetGUID();
                            else
                                TeamMemberGUID = (*(Team2List.begin()))->GetGUID();

                            // Check Team ID de Player's GUID
                            switch (TeamMemberGUID)
                            {
                                /*case 9566: 
                                case 41452: 
                                case 15562: 
                                case 60162:
                                    TeamID = -1500001; // No se encontró el equipo
                                    break;
                                case 53274: 
                                case 57776: 
                                case 8674: 
                                case 23206:
                                    TeamID = -1500002; // 
                                    break;
                                case 15148: 
                                case 4443: 
                                case 9371: 
                                case 56155:
                                    TeamID = -1500003; 
                                    break;
                                case 60803: 
                                case 46799: 
                                case 46771: 
                                case 59942:
                                    TeamID = -1500004; 
                                    break;
                                case 1977: 
                                case 48482: 
                                case 3202:
                                case 43022:
                                    TeamID = -1500005; 
                                    break;
                                case 6679: 
                                case 10758: 
                                case 6808: 
                                case 279:
                                    TeamID = -1500006; 
                                    break;
                                case 60461:
                                case 3169: 
                                case 8211: 
                                case 71794:
                                    TeamID = -1500007; 
                                    break;
                                case 4851: 
                                case 33904: 
                                case 23240: 
                                case 60885:
                                    TeamID = -1500008; 
                                    break;
                                case 69096: 
                                case 50665: 
                                case 52357: 
                                case 72082:
                                    TeamID = -1500009; 
                                    break;
                                case 10391: 
                                case 8673: 
                                case 2821: 
                                case 49437:
                                    TeamID = -1500010; 
                                    break;
                                case 12283: 
                                case 8907:
                                case 3876:
                                case 10071:
                                    TeamID = -1500011; 
                                    break;
                                case 150: 
                                case 48821:
                                case 5473: 
                                case 32776:
                                    TeamID = -1500012; 
                                    break;
                                case 56575: 
                                case 4029: 
                                case 1191:
                                case 8328:
                                    TeamID = -1500013; 
                                    break;
                                case 5048: 
                                case 21378: 
                                case 1173:
                                    TeamID = -1500014; 
                                    break;
                                case 11934: 
                                case 8837: 
                                case 56900: 
                                case 19107:
                                    TeamID = -1500015; 
                                    break;
                                case 71632: 
                                case 71740: 
                                case 68377: 
                                case 72310:
                                    TeamID = -1500016; 
                                    break;*/
                                // Solo para testear
                                case 2: 
                                    TeamID = -1500015; 
                                    break;*/
                                case 10: 
                                    TeamID = -1500016; 
                                    break;*/
                                default:
                                    TeamID = -1500000; 
                                    break;
                            }

                            if (TeamID)
                            {
                                if (i == 0)
                                {
                                    Team1 = TeamID;
                                    DoScriptText(Team1, me);
                                    me->MonsterYell("VS", 0, 0);
                                }
                                else
                                {
                                    Team2 = TeamID;
                                    DoScriptText(Team2, me);
                                }
                            }
                    }
                }
                me->MonsterYell("La Arena Comenzara en 60 Segundos!", 0, 0);
                DoPlaySoundToSet(me, SOUND_ELEMENTAL_SPAWN);
                uiStep = 1;
                uiTimer = 30000;
                uiArenaTimer = 0;
                uiFireTimer = urand(120000, 150000);
                uiBonusTimer = 100000;
                bonusCount = 0;
                randomizeBonus();
                break;
            }
            case ACTION_ARENA_SUSPEND:
                me->MonsterYell("Arena Terminada!", 0, 0);
                DoPlaySoundToSet(me, SOUND_GONG);
                if (Creature* Fire = me->FindNearestCreature(NPC_GROUND_SCORCH, 20))
                    Fire->DisappearAndDie();
                uint32 Team1Count = 0;
                uint32 Team2Count = 0;
                
                if (Team1List.size() > 2 && Team2List.size() > 2)
                {
                    // Check the First Team
                    for (std::list<Unit*>::const_iterator itr = Team1List.begin(); itr != Team1List.end(); ++itr)
                    {
                        Player *pTarget = me->GetPlayer(*me,GetGUID);
                        //Player* pTarget = Player::GetPlayer((*itr)->GetGUID());
                                            
                        if (!pTarget)
                            continue;
                        
                        if (pTarget->isAlive())
                            Team1Count++;
                        else
                        {
                            pTarget->ResurrectPlayer(1, false);
                            
                            if (GmGUID)
                                pTarget->MonsterWhisper("Vuelve A la Vida", GmGUID);
                        }
                    }

                    // Check the Second Team
                    for (std::list<Unit*>::const_iterator itr = Team2List.begin(); itr != Team2List.end(); ++itr)
                    {
                        Player *pTarget = me->GetPlayer(*me,GetGUID);
                        //Player* pTarget = Player::GetPlayer((me)->GetGUID());
                        
                        if (!pTarget)
                            continue;
                        
                        if (pTarget->isAlive())
                            Team2Count++;
                        else
                        {
                            pTarget->ResurrectPlayer(1, false);
                            if (GmGUID)
                                pTarget->MonsterWhisper("Vuelve A la Vida", GmGUID);
                        }
                    }
                    
                    switch (Team1Count - Team2Count)
                    {
                        case 2:
                        case 3:
                            me->MonsterYell("El ganador es el equipo:", 0, 0);
                            DoScriptText(Team1, me);
                            break;
                        case -2:
                        case -3:
                            me->MonsterYell("El ganador es el equipo:", 0, 0);
                            DoScriptText(Team2, me);
                            break;
                        case 1:
                        case -1:
                            if (Team1Count == 0)
                            {
                                me->MonsterYell("El ganador es el equipo:", 0, 0);
                                DoScriptText(Team2, me);
                            }
                            else if (Team2Count == 0)
                            {
                                me->MonsterYell("El ganador es el equipo:", 0, 0);
                                DoScriptText(Team1, me);
                            }
                            else
                                me->MonsterYell("Empate!", 0, 0);
                            break;
                        case 0:
                            me->MonsterYell("Empate!", 0, 0);
                            break;
                    }
                }
                break;
        } 
    }
    
        void randomizeBonus()
        {
            bonusOrder[0] = 0;
            bonusOrder[1] = 1;
            bonusOrder[2] = 2;

            //Swaps the entire array
            for (uint8 n = 0; n < 3; n++)
            {
                uint8 random = rand() % 2;
                uint8 temp = bonusOrder[random];
                bonusOrder[random] = bonusOrder[n];
                bonusOrder[n] = temp;
            }
        }

        void SpawnBonus()
        {
            switch(bonusCount)
            {
                case 0: 
                    bonusHandler(bonusOrder[0]); 
                    break;
                case 1: 
                    bonusHandler(bonusOrder[1]); 
                    break;
                case 2: 
                    bonusHandler(bonusOrder[2]);
                    break;
            }
            bonusCount++;
            if (bonusCount > 2)
                bonusCount = 0;
            DoPlaySoundToSet(me, SOUND_ELEMENTAL_SPAWN);
        }
        
        void bonusHandler(uint8 bonus)
        {
            switch(bonus)
            {
                case 0:
                    me->SummonCreature(NPC_RED_BONUS, BonusPos[rand()%4], TEMPSUMMON_TIMED_DESPAWN, 5000);
                    break;
                case 1:
                    me->SummonCreature(NPC_BLUE_BONUS, BonusPos[rand()%4], TEMPSUMMON_TIMED_DESPAWN, 5000);
                    break;
                case 2:
                    me->SummonCreature(NPC_GREEN_BONUS, BonusPos[rand()%4], TEMPSUMMON_TIMED_DESPAWN, 5000);
                    break;
            }
        }
    };
};


/*------------------------------------------------------*
 *                    MK Arena Bonus                    *
 *------------------------------------------------------*/

class npc_mk_bonus : public CreatureScript
{
public:
    npc_mk_bonus(): CreatureScript("npc_mk_bonus"){ }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_mk_bonusAI (pCreature);
    }
    
    struct npc_mk_bonusAI : public Scripted_NoMovementAI
    {
        npc_mk_bonusAI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            
            switch(me->GetEntry())
            {
                case NPC_RED_BONUS:
                    Skybeam = 63772;
                    Bonus = 63250; // 300 crit rating per 10 secs     
                    break;
                case NPC_BLUE_BONUS:
                    Skybeam = 63769;
                    Bonus = 13533; // 300 haste rating per 10 secs
                    break;
                case NPC_GREEN_BONUS:
                    Skybeam = 64117;
                    Bonus = 22863; // 30% run speed per 10 secs
                    break;
                default:
                    break;
            }

            if (Skybeam)
                DoCast(Skybeam);
        }
        
        uint32 Skybeam;
        uint32 Bonus;

        void MoveInLineOfSight(Unit *who)
        {
            if (me->IsWithinDistInMap(who, 1.0f) && who->GetTypeId() == TYPEID_PLAYER && !who->ToPlayer()->isGameMaster())
            {
                who->CastSpell(who, Bonus, true);
                me->DisappearAndDie();
            }
        }
    };
};

void AddSC_npc_gurubashi_theme()
{    
    new npc_gurubashi_theme();
    new npc_mk_bonus();
    new mk_arena_master();
}
