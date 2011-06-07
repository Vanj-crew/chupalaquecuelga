/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptPCH.h"
#include "SpellAuraEffects.h"
#include "ScriptMgr.h"

/*######
## Quest Soporte Threat From Above
## npc_Chillmaw
######*/

// UPDATE `creature_template` SET `ScriptName`='npc_chillmaw' WHERE `entry`=33687;
// Bug conocido: El npc al no ser matado desaparece hasta reiniciar el server.
enum Chillmaw
{
    SPELL_FROST_BREATH  = 65248,
    SPELL_WING_BUFFET   = 65260,
    BOMBARDIER_1        = 0,
    BOMBARDIER_2        = 1,
    BOMBARDIER_3        = 2
};

class npc_chillmaw : public CreatureScript
{
public:
    npc_chillmaw() : CreatureScript("npc_chillmaw") { }

    struct npc_chillmawAI : public ScriptedAI
    {
        npc_chillmawAI(Creature *c) : ScriptedAI(c), vehicle(c->GetVehicleKit())
        {
            assert(vehicle);
        }
        
        EventMap events;
        Vehicle *vehicle;

        uint32 Spell_FrostBreath_Timer;
        uint32 Spell_WingBuffet_Timer;

        bool Pasajero_1;
        bool Pasajero_2;
        bool Pasajero_3;

        void Reset()
        {
            me->SetReactState(REACT_AGGRESSIVE);            
            Spell_FrostBreath_Timer = 6000;
            Spell_WingBuffet_Timer = 1500;
            Pasajero_1 = false;
            Pasajero_2 = false;
            Pasajero_3 = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;
            
            if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;
  
            if (Spell_FrostBreath_Timer <= diff)
            {   
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_FROST_BREATH);
                Spell_FrostBreath_Timer = urand(15000, 16500);
            } else Spell_FrostBreath_Timer -=diff;

            if (Spell_WingBuffet_Timer <= diff)
            {
                DoCast(me, SPELL_WING_BUFFET);
                Spell_WingBuffet_Timer = urand(4000, 6500);
            } else Spell_WingBuffet_Timer -= diff;

            if (!Pasajero_1 && (me->GetHealth() < me->GetMaxHealth() * 0.70))
            {
                if (Creature *Bombardier1 = CAST_CRE(vehicle->GetPassenger(BOMBARDIER_1)))
                {
                    Bombardier1->ExitVehicle();
                    Bombardier1->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    Bombardier1->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    Bombardier1->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_ATTACKABLE_1);
                    Bombardier1->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                }
                Pasajero_1 = true;
            }

            if (!Pasajero_2 && (me->GetHealth() < me->GetMaxHealth() * 0.50))
            {
                if (Creature *Bombardier2 = CAST_CRE(vehicle->GetPassenger(BOMBARDIER_2)))
                {
                    Bombardier2->ExitVehicle();
                    Bombardier2->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    Bombardier2->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    Bombardier2->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_ATTACKABLE_1);
                    Bombardier2->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                }
                Pasajero_2 = true;
            }

            if (!Pasajero_3 && (me->GetHealth() < me->GetMaxHealth() * 0.25))
            {
                if (Creature *Bombardier3 = CAST_CRE(vehicle->GetPassenger(BOMBARDIER_3)))
                {
                    Bombardier3->ExitVehicle();
                    Bombardier3->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);                    
                    Bombardier3->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    Bombardier3->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_ATTACKABLE_1);
                    Bombardier3->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                }
                Pasajero_3 = true;
            }
            DoMeleeAttackIfReady();
        }
    };

    void EnterCombat(Unit* /*who*/) { }
        
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_chillmawAI (pCreature);
    }
};

/*######
## npc_vendor_argent_tournament
UPDATE `creature_template` SET `ScriptName`='npc_vendor_argent_tournament' WHERE `entry` IN (33553, 33554, 33556, 33555, 33557, 33307, 33310, 33653, 33650, 33657);
######*/

const uint32 ArgentTournamentVendor[10][4] =
{
    {33553,13726,2,14460},  // Orc
    {33554,13726,8,14464},  // Troll
    {33556,13728,6,14458},  // Tauren
    {33555,13729,5,14459},  // Undead
    {33557,13731,10,14465}, // Blood Elf
    {33307,13699,1,14456},  // Human
    {33310,13713,3,14457},  // Dwarf
    {33653,13725,4,14463},  // Night Elf
    {33650,13723,7,14462},  // Gnome
    {33657,13724,11,14461}  // Draenei
};

class npc_vendor_argent_tournament : public CreatureScript
{
public:
    npc_vendor_argent_tournament() : CreatureScript("npc_vendor_argent_tournament") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        bool npcCheck = false;
        bool questCheck = false;
        bool raceCheck = false;
        uint32 textId = 0;
	
        for (int i = 0; (i < 10) && !npcCheck; i++)
        {
            if (pCreature->GetEntry() == ArgentTournamentVendor[i][0])
            {
                npcCheck = true;
                questCheck = pPlayer->GetQuestStatus(ArgentTournamentVendor[i][1]) == QUEST_STATUS_COMPLETE;
                raceCheck = pPlayer->getRace() == ArgentTournamentVendor[i][2];
                textId = ArgentTournamentVendor[i][3];
		    }
	    }
	
        if (questCheck || raceCheck)
            pPlayer->SEND_VENDORLIST(pCreature->GetGUID()); 
        else
            pPlayer->SEND_GOSSIP_MENU(textId, pCreature->GetGUID());
        return true;
    }
};


/*######
* quest_givers_argent_tournament
UPDATE `creature_template` SET `ScriptName`='quest_givers_argent_tournament' WHERE `entry` IN (33593, 33592, 33225, 33312, 33335, 33379, 33373, 33361, 33403, 33372);
######*/

class quest_givers_argent_tournament : public CreatureScript
{
public:
    quest_givers_argent_tournament(): CreatureScript("quest_givers_argent_tournament"){}

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {

            if (pCreature->isQuestGiver())
            {    
                Object *pObject = (Object*)pCreature;
                QuestRelations* pObjectQR = sObjectMgr->GetCreatureQuestRelationMap();
                QuestRelations* pObjectQIR = sObjectMgr->GetCreatureQuestInvolvedRelation();
                QuestMenu &qm = pPlayer->PlayerTalkClass->GetQuestMenu();
                qm.ClearMenu();
                
                for (QuestRelations::const_iterator i = pObjectQIR->lower_bound(pObject->GetEntry()); i != pObjectQIR->upper_bound(pObject->GetEntry()); ++i)
                {
                    uint32 quest_id = i->second;
                    QuestStatus status = pPlayer->GetQuestStatus(quest_id);
                    if (status == QUEST_STATUS_COMPLETE && !pPlayer->GetQuestRewardStatus(quest_id))
                        qm.AddMenuItem(quest_id, 4);
                    else if (status == QUEST_STATUS_INCOMPLETE)
                        qm.AddMenuItem(quest_id, 4);
                    //else if (status == QUEST_STATUS_AVAILABLE)
                    //    qm.AddMenuItem(quest_id, 2);
                }
                
                bool EligibilityAlliance = pPlayer->GetQuestStatus(13686) == QUEST_STATUS_COMPLETE;
                bool EligibilityHorde = pPlayer->GetQuestStatus(13687) == QUEST_STATUS_COMPLETE;

                for (QuestRelations::const_iterator i = pObjectQR->lower_bound(pObject->GetEntry()); i != pObjectQR->upper_bound(pObject->GetEntry()); ++i)
                {
                    uint32 quest_id = i->second;
                    Quest const* pQuest = sObjectMgr->GetQuestTemplate(quest_id);

                    if (!pQuest) 
                        continue;

                    switch (quest_id)
                    {
                        case 13707: // Valiant Of Orgrimmar
                        case 13708: // Valiant Of Sen'jin
                        case 13709: // Valiant Of Thunder Bluff
                        case 13710: // Valiant Of Undercity
                        case 13711: // Valiant Of Silvermoon
                            if(!EligibilityHorde)
                            {
                                QuestStatus status = pPlayer->GetQuestStatus(quest_id);
                                if (pQuest->IsAutoComplete() && pPlayer->CanTakeQuest(pQuest, false))
                                    qm.AddMenuItem(quest_id, 4);
                                else 
                                    if (status == QUEST_STATUS_NONE && pPlayer->CanTakeQuest(pQuest, false))
                                        qm.AddMenuItem(quest_id, 2);
                            }
                            break;
                        case 13593: // Valiant Of Stormwind
                        case 13703: // Valiant Of Ironforge
                        case 13706: // Valiant Of Darnassus
                        case 13704: // Valiant Of Gnomeregan
                        case 13705: // Valiant Of The Exodar
                            if (!EligibilityAlliance)
                            {
                                QuestStatus status = pPlayer->GetQuestStatus(quest_id);
                                if (pQuest->IsAutoComplete() && pPlayer->CanTakeQuest(pQuest, false))
                                    qm.AddMenuItem(quest_id, 4);
                                else 
                                    if (status == QUEST_STATUS_NONE && pPlayer->CanTakeQuest(pQuest, false))
                                        qm.AddMenuItem(quest_id, 2);
                            }
                            break;
                        default:
                            QuestStatus status = pPlayer->GetQuestStatus(quest_id);

                            if (pQuest->IsAutoComplete() && pPlayer->CanTakeQuest(pQuest, false))
                                qm.AddMenuItem(quest_id, 4);
                            else 
                                if (status == QUEST_STATUS_NONE && pPlayer->CanTakeQuest(pQuest, false))
                                    qm.AddMenuItem(quest_id, 2);
                            break;
                    }
                }
            }
            pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
            return true;
    }
};

/*######
* npc_quest_givers_for_crusaders
UPDATE `creature_template` SET `ScriptName`='npc_quest_givers_for_crusaders' WHERE `entry` IN (34882, 35094);
######*/

class npc_quest_givers_for_crusaders : public CreatureScript
{
public:
    npc_quest_givers_for_crusaders() : CreatureScript("npc_quest_givers_for_crusaders") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pPlayer->HasTitle(TITLE_CRUSADER))
            if (pCreature->isQuestGiver())
                pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }
};

/*######
Argent Tournament - Spell
Spell Fixed:
    - 62960 - Charge Mount Npc.
    - 62575 - Shield Mount Npc.
    - 62544 - Melee Mount Npc.
    - 62863 - Duel Mount Npc.

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62960,62575,62544,62863);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('62960', 'spell_tournament_charge'),
('62575', 'spell_tournament_shield'),
('62544', 'spell_tournament_melee'),
('62863', 'spell_tournament_duel');
######*/

class spell_tournament_charge : public SpellScriptLoader
{
public:
    spell_tournament_charge() : SpellScriptLoader("spell_tournament_charge") { }

    class spell_tournament_charge_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tournament_charge_SpellScript);

        void HandleEffectScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* pTarget = GetHitUnit())
            {
                if (Unit *caster = GetCaster())
                {
                    caster->CastSpell(pTarget,74399,true);
                    caster->CastSpell(pTarget,68321,true);

                    if (pTarget->GetTypeId() == TYPEID_UNIT && pTarget->ToCreature()->GetEntry() == 33272)
                    {
                        // Kill Credit
                        if (Unit *player = caster->GetCharmerOrOwner())
                            player->CastSpell(player,62658,true);
                    }
                }

                if (pTarget->GetAura(64100))
                    pTarget->RemoveAuraFromStack(64100);
                else 
                    if (pTarget->GetAura(62552))
                        pTarget->RemoveAuraFromStack(62552);
                    else 
                        if (pTarget->GetAura(62719))
                            pTarget->RemoveAuraFromStack(62719);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_tournament_charge_SpellScript::HandleEffectScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_tournament_charge_SpellScript();
    }
};

class spell_tournament_shield : public SpellScriptLoader
{
public:
    spell_tournament_shield() : SpellScriptLoader("spell_tournament_shield") { }

    class spell_tournament_shield_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tournament_shield_SpellScript);

        void HandleEffectScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* pTarget = GetHitUnit())
            {
                if (Unit *caster = GetCaster())
                {
                    caster->CastSpell(pTarget,62626,true );

                    if (pTarget->GetTypeId() == TYPEID_UNIT && pTarget->ToCreature()->GetEntry() == 33243)
                    {
                        // Kill Credit
                        if (Unit *player = caster->GetCharmerOrOwner())
                            player->CastSpell(player,62673,true);
                    }
                }

                if (pTarget->GetAura(64100))
                    pTarget->RemoveAuraFromStack(64100);
                else 
                    if (pTarget->GetAura(62552))
                        pTarget->RemoveAuraFromStack(62552);
                    else 
                        if (pTarget->GetAura(62719))
                            pTarget->RemoveAuraFromStack(62719);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_tournament_shield_SpellScript::HandleEffectScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_tournament_shield_SpellScript();
    }
};

class spell_tournament_melee : public SpellScriptLoader
{
public:
    spell_tournament_melee() : SpellScriptLoader("spell_tournament_melee") { }

    class spell_tournament_melee_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tournament_melee_SpellScript);

        void HandleEffectScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* pTarget = GetHitUnit())
            {
                if (Unit *caster = GetCaster())
                {
                    if (pTarget->GetTypeId() == TYPEID_UNIT && pTarget->ToCreature()->GetEntry() == 33229)
                    {
                        // Kill Credit
                        if (Unit *player = caster->GetCharmerOrOwner())
                            player->CastSpell(player,62672,true);
                    }
                }
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_tournament_melee_SpellScript::HandleEffectScriptEffect, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_tournament_melee_SpellScript();
    }
};

class spell_tournament_duel : public SpellScriptLoader
{
public:
    spell_tournament_duel() : SpellScriptLoader("spell_tournament_duel") { }

    class spell_tournament_duel_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_tournament_duel_SpellScript);

        void HandleEffectScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* pTarget = GetHitUnit())
            {
                if (pTarget->GetTypeId() != TYPEID_PLAYER)
                    return;

                if (Unit *caster = GetCaster()->GetCharmerOrOwner())
                    caster->CastSpell(pTarget,62875,true);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_tournament_duel_SpellScript::HandleEffectScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_tournament_duel_SpellScript();
    }
};

void AddSC_Argen_Tournament()
{
    new npc_chillmaw;
    new npc_vendor_argent_tournament;
    new quest_givers_argent_tournament;
    new spell_tournament_charge;
    new spell_tournament_shield;
    new spell_tournament_melee;
    new spell_tournament_duel;
}