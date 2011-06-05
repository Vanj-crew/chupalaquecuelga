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

/*######
## Quest Soporte Threat From Above
## npc_Chillmaw
######*/

// UPDATE `creature_template` SET `ScriptName`='npc_chillmaw' WHERE `entry`=33687;
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
    
    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_chillmawAI (pCreature);
    }
};

void AddSC_Argen_Tournament()
{
    new npc_chillmaw;
}