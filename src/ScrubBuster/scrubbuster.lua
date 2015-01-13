--[[
ScrubBuster by burneddi
]]

--Libraries
local StatLogic = AceLibrary("StatLogic-1.0")

ScrubBuster = {

stats = {}; --the table in which we'll gather the stats, organized by unit name
tempUnit = nil;
talentsTimeout = false; --whether talent check has timed out for current unit

};

--Check that BonusScanner version is correct, and print an alert if it isn't:
if BONUSSCANNER_VERSION ~= "3.5x" then
	DEFAULT_CHAT_FRAME:AddMessage(RED_FONT_COLOR_CODE.."ScrubBuster has detected an incorrect BonusScanner version. Some inspect stats will appear incorrect. Verify that you are using the BonusScanner version included with ScrubBuster."..FONT_COLOR_CODE_CLOSE);
end

-----------------------------
--Script handling stuff etc--
-----------------------------

--we need a timeout for INSPECT_TALENT_READY function in case it never fires for whatever reason
local waitingForTalents = false;
local waitedForTalents = 0; --time we've spent waiting for talents
CreateFrame("Frame", "ScrubBusterTimeout");

function ScrubBusterTimeout_OnUpdate(self, elapsed)
	if not waitingForTalents then
		waitedForTalents = 0;
		self:SetScript("OnUpdate", nil);
		return;
	end
	waitedForTalents = waitedForTalents + elapsed;
	if waitedForTalents >= 2 then
		ScrubBusterFrame:UnregisterEvent("INSPECT_TALENT_READY");
		if ScrubBuster.tempUnit then
			DEFAULT_CHAT_FRAME:AddMessage(RED_FONT_COLOR_CODE.."ScrubBuster: Timeout retrieving talent data for inspect. Chances are there is something wrong with the server you're playing on. Talent effects might not be calculated."..FONT_COLOR_CODE_CLOSE);
			ScrubBuster.talentsTimeout = true;
			ScrubBusterTalentTimeoutFrame:Show();
			ScrubBuster.tempUnit = nil;
			ScrubBuster.tempSpecial = nil;
		end
		waitedForTalents = 0;
		waitingforTalents = false;
		self:SetScript("OnUpdate", nil);
	end
end

function ScrubBuster_OnLoad()
	--we should probably do stuff here
end

function ScrubBuster_OnEvent(event, ...)
	if event == "INSPECT_TALENT_READY" then
		ScrubBusterFrame:UnregisterEvent("INSPECT_TALENT_READY");
		if ScrubBuster.tempUnit then
			local name = UnitName(ScrubBuster.tempUnit);
			ScrubBuster.stats[name] = {};
			ScrubBuster.stats[name]["talentsDone"] = true;
			waitingForTalents = false;
			DEFAULT_CHAT_FRAME:AddMessage("Scanning with talents");
			ScrubBuster:ScrubBust(ScrubBuster.tempUnit, true, ScrubBuster.tempSpecial);
			--ScrubBuster.stats[name]["level"], ScrubBuster.stats[name]["stats"], ScrubBuster.stats[name]["weaponStats"], ScrubBuster.stats[name]["itemStats"] = ScrubBuster:GetStats(ScrubBuster.tempUnit, ScrubBuster.tempSpecial);
			ScrubBuster.tempUnit = nil;
			ScrubBuster.tempSpecial = nil;
			ScrubBuster_StatsDone(name);
		end
	end
end

function ScrubBuster_StatsDone(name)
	--dummy function to hook into that gets called after stats have been gathered for name
end


--------------
--!!DANGER!!--
--------------
--variables ahead

--lots of boring patterns we need to match to lots of boring stats that items can have
--used in tooltip scanning
local sbDPSTemplate = string.gsub(getglobal("DPS_TEMPLATE"), "%%.1f", "(%%d+%%.%%d+)"); --yeah, we're just
local sbDPSTemplate2 = string.gsub(getglobal("DPS_TEMPLATE"), "%%.1f", "(%%d+%%,%%d+)"); --copying bonusscanner
local sbSpeedTemplate = getglobal("WEAPON_SPEED") .. " " .. "(%d+%.%d+)";
local sbSpeedTemplate2 = getglobal("WEAPON_SPEED") .. " " .. "(%d+%,%d+)";
local sbDamageTemplate = string.gsub(getglobal("DAMAGE_TEMPLATE"), "%%d %- %%d", "(%%d+) %%- (%%d+)");
local sbElementalDamageTemplate = string.gsub(getglobal("DAMAGE_TEMPLATE_WITH_SCHOOL"), "%%d %- %%d %%s", "(%%d+) %%- (%%d+) (%%a+)");
local sbAmmoDamageTemplate = string.gsub(getglobal("AMMO_DAMAGE_TEMPLATE"), "%%g", "(%%d+)");
local sbAmmoElementalDamageTemplate = string.gsub(getglobal("AMMO_SCHOOL_DAMAGE_TEMPLATE"), "%%g %%s", "(%%d+) (%%a+)");

--I don't think the next two are actually used for any weapons
--local sbSingleDamageTemplate = string.gsub(getglobal("SINGLE_DAMAGE_TEMPLATE"), "%%d", "(%%d+)");
--local sbSingleElementalDamageTemplate = string.gsub(getglobal("SINGLE_DAMAGE_TEMPLATE_WITH_SCHOOL"), "%%d %%s", "(%%d+) (%%a+)");

--The next two should also be caught by regular damage templates, which is ok for our uses
--local sbExtraDamageTemplate = string.gsub(getglobal("PLUS_DAMAGE_TEMPLATE"), "%%d %- %%d", "(%%d+) %- (%%d+)");
--local sbExtraElementalDamageTemplate = string.gsub(getglobal("PLUS_DAMAGE_TEMPLATE_WITH_SCHOOL"), "%%d %- %%d %s", "(%%d+) %- (%%d+) (%%a+)");

--The next two aren't used for any arrows I've ever heard of
--local sbExtraAmmoDamageTemplate = string.gsub(getglobal("PLUS_AMMO_DAMAGE_TEMPLATE"), "%%g", "(%%d+)");
--local sbExtraAmmoElementalDamageTemplate = string.gsub(getglobal("PLUS_AMMO_SCHOOL_DAMAGE_TEMPLATE"), "%%g %%s", "(%%d+) (%%a+)");

local sbExtraSingleDamageTemplate = string.gsub(getglobal("PLUS_SINGLE_DAMAGE_TEMPLATE"), "%%d", "(%%d+)");
local sbExtraSingleElementalDamageTemplate = string.gsub(getglobal("PLUS_SINGLE_DAMAGE_TEMPLATE_WITH_SCHOOL"), "%%d %%s", "(%%d+) (%%a+)");


local sbWeaponClasses = { --table of weapon classes as they appear in the tooltip, along with what we want to call them
	--this will be even more important later if we end up adding support for non-english localizations
	--most things like this are already "localized" through GlobalStrings I think, but this one isn't
	["Staff"] = "STAFF",
	["Polearm"] = "POLEARM",
	["Mace"] = "MACE",
	["Axe"] = "AXE",
	["Sword"] = "SWORD",
	["Wand"] = "WAND",
	["Dagger"] = "DAGGER",
	["Thrown"] = "THROWN",
	["Fist Weapon"] = "FISTWEAPON",
	["Shield"] = "SHIELD",
	["Bow"] = "BOW",
	["Gun"] = "GUN",
	["Crossbow"] = "CROSSBOW",
	["Idol"] = "IDOL",
	["Libram"] = "LIBRAM",
	["Totem"] = "TOTEM",
	--there's also "Held in Off-hand" (called "OFFHANDITEM") items but they're handled outside of this table
	--also items for which we can't figure this out will be called "UNKNOWN"
};

local sbWeaponHand = { --table of which hand/slot the weapon goes to
	[getglobal("INVTYPE_2HWEAPON")] = "TWOHAND", --both hands
	[getglobal("INVTYPE_WEAPON")] = "ONEHAND", --either main or offhand
	[getglobal("INVTYPE_WEAPONOFFHAND")] = "OFFHAND",
	[getglobal("INVTYPE_WEAPONMAINHAND")] = "MAINHAND",
	[getglobal("INVTYPE_HOLDABLE")] = "OFFHAND",
	[getglobal("INVTYPE_RANGED")] = "RANGED",
	[getglobal("INVTYPE_SHIELD")] = "OFFHAND",
	[getglobal("INVTYPE_THROWN")] = "RANGED",
	--[getglobal("INVTYPE_RELIC")] = "RELIC",
};

local sbDamageTypes = { --table for elemental damage types
	[getglobal("DAMAGE_SCHOOL2")] = "HOLY",
	[getglobal("DAMAGE_SCHOOL3")] = "FIRE",
	[getglobal("DAMAGE_SCHOOL4")] = "NATURE",
	[getglobal("DAMAGE_SCHOOL5")] = "FROST",
	[getglobal("DAMAGE_SCHOOL6")] = "SHADOW",
	[getglobal("DAMAGE_SCHOOL7")] = "ARCANE",
};

local ClassNameToID = {
	"WARRIOR",
	"PALADIN",
	"HUNTER",
	"ROGUE",
	"PRIEST",
	"SHAMAN",
	"MAGE",
	"WARLOCK",
	"DRUID",
	["WARRIOR"] = 1,
	["PALADIN"] = 2,
	["HUNTER"] = 3,
	["ROGUE"] = 4,
	["PRIEST"] = 5,
	["SHAMAN"] = 6,
	["MAGE"] = 7,
	["WARLOCK"] = 8,
	["DRUID"] = 9,
};

---------------
--DANGER OVER--
---------------





--quick rounding function in case we need it
--Example: sbRound(420.1488, 2); outputs 420.15
function ScrubBuster:round(num, idp) 
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end


function ScrubBuster:ConvertBStoSB(bsstats)
	--Function for converting BonusScanner stats to our table format, because we're unique snowflakes
	--(also because bonusscanner's way of indexing stats is awful) (not saying ours is better)
	local conversiontable = {
	--syntax: BONUSSCANNERSTAT = ScrubBuster.statTable.key.Stat,
		STR = {["primary"] = "str"},
		AGI = {["primary"] = "agi"},
		STA = {["primary"] = "sta"},
		INT = {["primary"] = "int"},
		SPI = {["primary"] = "spi"},

		HEALTH = {["resource"] = "health"},
		HEALTHREG = {["resource"] = "healthRegen"},
		MANA = {["resource"] = "mana"},
		MANAREG = {["resource"] = "manaRegenWhileCasting"}, --bonusscanner's manareg is mp5 so it's while casting

		ARCANERES = {["resist"] = "arcane"},
		FIRERES = {["resist"] = "fire"},
		NATURERES = {["resist"] = "nature"},
		FROSTRES = {["resist"] = "frost"},
		SHADOWRES = {["resist"] = "shadow"},

		HASTE = {["physical"] = "hasteRating"},
		TOHIT = {["physical"] = "hitRating"},
		CRIT = {["melee"] = "critRating"},
		ARMORPEN = {["physical"] = "armorPen"},
		EXPERTISE = {["melee"] = "expertiseRating"},
		ATTACKPOWER = {["melee"] = "attackPower"},
		DMGWPN = {["melee"] = "mainHandDmgMax"}, --this affects mainhand and offhand min and max damage
												--so we'll have to hack it in properly later

		RANGEDATTACKPOWER = {["ranged"] = "attackPower"},
		RANGEDDMG = {["ranged"] = "dmgMax"}, --this affects ranged min and max damage, also have to hack it

		DMG = {["spell"] = "damage"},
		HOLYDMG = {["spell"] = "holyDamage"},
		FIREDMG = {["spell"] = "fireDamage"},
		NATUREDMG = {["spell"] = "natureDamage"},
		FROSTDMG = {["spell"] = "frostDamage"},
		SHADOWDMG = {["spell"] = "shadowDamage"},
		ARCANEDMG = {["spell"] = "arcaneDamage"},
		HEAL = {["spell"] = "healing"},
		SPELLCRIT = {["spell"] = "critRating"},
		HOLYCRIT = {["spell"] = "holyCritRating"},
		FIRECRIT = {["spell"] = "fireCritRating"},
		NATURECRIT = {["spell"] = "natureCritRating"},
		FROSTCRIT = {["spell"] = "frostCritRating"},
		SHADOWCRIT = {["spell"] = "shadowCritRating"},
		ARCANECRIT = {["spell"] = "arcaneCritRating"},
		SPELLTOHIT = {["spell"] = "hitRating"},
		SPELLH = {["spell"] = "hasteRating"},
		SPELLPEN = {["spell"] = "penetration"},

		ARMOR = {["defense"] = "armor"},
		DEFENSE = {["defense"] = "defenseRating"},
		DODGE = {["defense"] = "dodgeRating"},
		PARRY = {["defense"] = "parryRating"},
		BLOCK = {["defense"] = "blockRating"},
		BLOCKVALUE = {["defense"] = "blockValue"},
		RESILIENCE = {["defense"] = "resilience"}
	};

	local convertedstats = ScrubBuster:InitStatsTable();

	for k,v in pairs(bsstats) do
		local temp = conversiontable[k];
		if temp ~= nil then
			local cat;local val;
			cat, val = next(temp);
			
			if cat and k == "ATTACKPOWER" then --generic item AP also gives RAP
				convertedstats["melee"]["attackPower"]["posMod"] = v;
				if convertedstats["ranged"]["attackPower"]["posMod"] then
					convertedstats["ranged"]["attackPower"]["posMod"] = convertedstats["ranged"]["attackPower"]["posMod"] + v;
				else
					convertedstats["ranged"]["attackPower"]["posMod"] = v;
				end
			elseif cat and k == "CRIT" then --critrating gives both melee and ranged critrating
				convertedstats["melee"]["critRating"]["posMod"] = v;
				convertedstats["ranged"]["critRating"]["posMod"] = v;
			elseif cat and k == "DMGWPN" then
				convertedstats["melee"]["mainHandDmgMax"]["posMod"] = v;
				convertedstats["melee"]["mainHandDmgMin"]["posMod"] = v;
				convertedstats["melee"]["offHandDmgMax"]["posMod"] = v;
				convertedstats["melee"]["offHandDmgMin"]["posMod"] = v;
			elseif cat and k == "RANGEDDMG" then
				convertedstats["ranged"]["dmgMax"]["posMod"] = v;
				convertedstats["ranged"]["dmgMin"]["posMod"] = v;
			elseif cat then
				convertedstats[cat][val]["posMod"] = v;
			end
		end
	end
	return convertedstats
end


function ScrubBuster:ScrubBust(target, refresh, special)
--the primary function that handles ou're shit
--Gets the stats and puts them into the ScrubBuster.stats table, indexed by name
--refresh is bool, it should be true if we're only refreshing the stats of the currently inspected unit
--special is a table of all the special features we want, it will get passed on to the stat getting
--function

	if not UnitIsPlayer(target) or not CanInspect(target) or not CheckInteractDistance(target, 1) then return nil end
	local name = UnitName(target);
	
	ScrubBuster.stats = {}; --temporary(?): reset the stats variable
	--(might add gearscore -like character stat databasing stuff later)
	
	if UnitIsUnit("player", target) then
		ScrubBuster.stats[name] = {};
		ScrubBuster.talentsTimeout = false;
		ScrubBuster.stats[name]["level"], ScrubBuster.stats[name]["stats"], ScrubBuster.stats[name]["weaponStats"], ScrubBuster.stats[name]["itemStats"] = ScrubBuster:GetStats(target, special);
		ScrubBuster_StatsDone(name);
	elseif refresh then
		ScrubBuster.stats[name] = {};
		ScrubBuster.stats[name]["level"], ScrubBuster.stats[name]["stats"], ScrubBuster.stats[name]["weaponStats"], ScrubBuster.stats[name]["itemStats"] = ScrubBuster:GetStats(target, special);
		ScrubBuster_StatsDone(name);
	else --it's an inspect target and we're not refreshing, so we need to wait for talents to be done
		ScrubBuster.talentsTimeout = false;
		
		--actually, even if we can't get the talents let's get their stats anyway, and then get them
		--again when talents become available
		ScrubBuster.stats[name] = {};
		ScrubBuster.stats[name]["level"], ScrubBuster.stats[name]["stats"], ScrubBuster.stats[name]["weaponStats"], ScrubBuster.stats[name]["itemStats"] = ScrubBuster:GetStats(target, special);
		ScrubBuster_StatsDone(name);
		
		ScrubBuster.tempUnit = target;
		ScrubBuster.tempSpecial = special;
		waitingForTalents = true;
		waitedForTalents = 0;
		ScrubBusterTimeout:SetScript("OnUpdate", ScrubBusterTimeout_OnUpdate);
		ScrubBusterFrame:RegisterEvent("INSPECT_TALENT_READY");
		NotifyInspect(target);
		--rest of this stuff will be handled by the talent ready eventhandler
	end
	return true;
end

function ScrubBuster:InitStatsTable()
--Initializes the stats table. Most values are initialized as zeroes, but some
--(at this moment, only multiplier values) default to 1.
--This whole thing is pretty awful so if you're not me and are reading this I'm so sorry.
--I will try to collect some relevant notes here, for myself and for you

--Each stat has three table fields:
	--Base is self-explanatory, it's the base value of the stat. ie. what displays as the
	  --white number in your character sheet. Things like racials, talents? and stuff go here.
	  --For some stats, such as weapon damage, base is the only value used, but for (in)consistency's
	  --sake these stats have the other fields too.
	--posMod is the positive modifier or buff. Equipment bonuses, most active auras, etc. affect this stat
	  --(or the negMod stat if they're negative modifiers). A notorious exception to this is multiplier
	  --buffs like Blessing of Kings: they multiply the base+posMod value of the stat (I believe negMod
	  --doesn't get multiplied), but increase the base value. So if you're naked and
	  --have Blessing of Kings on you, the stats on your character sheet will appear as white (unbuffed).
	--negMod is the negative modifier or buff. Negative auras affect this. It's basically the
	  --red component of stats on the character sheet.
	--mult is stat multiplier. Percentual multipliers will be added to this, and then after everything
	  --else is sorted out this gets resolved into actual stat points (I believe that's how it works
	  --at least). This means things like % increase racials (human, tauren), 
	  --Blessing of Kings, and the like.
	  --IMPORTANT NOTICE: these stack multiplicatively, so whenever this field is changed the correct
	  --syntax is for example: ["mult"] = ["mult"] * (1 + 0.1);
	  --
	  --In the case of weapon damage (mainHandDmgMin etc) this multiplier affects things like
	  --dual wield specialization etc. For offhand weapons it defaults to 0.5 as that's the
	  --damage penalty for dual wielding. Weapon DPS is calculated from min and max damage,
	  --so this multiplier should not be applied to that
	
	--TODO: should probably write a function to handle changes to stats in this table rather
	--than doing it the hard way.


--About multipliers (eg. human spirit racial, BoK) and negative buffs that reduce stat by absolute value:
--Multipliers do not seem to apply to the magnitude of negative buffs. Needs more testing
--to ascertain, but for now we'll go with this.
--the way total stat is assumed to be calculated is as such:
--(base + posMod) * mult - negMod
--HOWEVER, negative buffs that reduce a stat by a percentage just directly modify the mult value,
--which means that they also ultimately appear as a white "unmodified" stat on the char sheet
	
--About increasedAttackSpeed (percentual haste):
--[[
Patch 1.12

Previously Haste and Slow effects worked inconsistently, with spells working
differently from weapons, and hastes and slows not acting as inverses of each other.
We have revised the system so that all haste and slow effects work the same way,
and haste and slow percentages of the same magnitude perfectly cancel each other out
(30% haste and 30% slow combine to no change). As a result, we had to change the tooltip
numbers on all spell haste effects, and on all melee and range slow effects.
The numbers in the tooltips are different, but the game functionality is unchanged
(other than slight rounding errors). Those tooltips that changed will now display larger
numbers than they used to display. Conceptually, haste values indicate how much more
of that activity you can perform in a given time. 30% melee haste means 30% more swings
in a given time. Slow values indicate how much longer an activity takes to complete.
30% slow means an action takes 30% longer to finish.

Haste now stacks multiplicatively.

IN OTHER WORDS:
- posMod is increased speed (a positive decimal value, eg. 0.35 = 35% increased speed)
- negMod is SLOWS, a positive decimal value!!!!, **NOT** a negative decimal value
	these slows cancel out haste 1:1, which means that in the formula they're a divisor
	also generally slows don't stack. At all. We'll cross that bridge when (if) we get to it.
- Base is kinda just there, I doubt it will generally be used for anything.
	but if it's used it will be a positive decimal value
	it kinda should default to 1 but won't

- The way these are in practice calculated is like this:
	(1 + base) * (1 + posMod) / (1 + negMod)
	considering base is supposed to be zero, the first part can probably be omitted
	
- When adding to a value make sure to multiply instead of just adding, so if you
	add eg. a 15% haste effect to the posMod then that's (1 + posMod) * (1 + 0.15) - 1;
]]

--Damage multipliers (offHandDamageMultiplier etc) are another stat with special exception treatment
--They only use one field: base. They seem to all be percentage points, not actual percentages,
--so they work like critPercentage, dodgePercentage etc. so that a 5% damage modifier always results
--in 5 percentage points being added to the current modifier.
--Example: warrior in Defensive Stance (-10% damage) who has Two-Handed Weapon Specialization (+5% damage)
--result is 95% damage, not 94.5% damage.

--Damage multipliers (offHandDamageMultiplier etc) are the other stat with special exception treatment
--Damage multipliers are a flat out multiplier for weapon damage, some talents and buffs
--have it. On the character sheet it has special treatment (compared to other multipliers),
--as any damage multipliers make the damage stat appear green and in the tooltip you'll
--see the multiplier as a percentage. These only use the "mult" field, and stack multiplicatively
--(even though the UI might have you believe otherwise).

--oh by the way for weapon damage "base" is base dmg + effect from attackpower etc.,
--"posMod" is any positive buffs that may be picked up like sharpening stones or Brutal Earthstorm Diamond
--"negMod" is negative buffs. Currently we don't pick up buffs though and don't plan to.
--Multiplier is not used except for offhand damage penalty.

	local stats = {
		["primary"] = {
			["str"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["agi"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["sta"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["int"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["spi"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},

		["resource"] = {
			["health"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["healthRegen"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mana"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["manaRegen"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["manaRegenWhileCasting"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		--[[["general"] = {
			["damageMultiplier"] = {["base"] = 1, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},]]
		
		["resist"] = {
			["arcane"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["fire"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["nature"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["frost"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["shadow"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		["defense"] = {
			["armor"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["defense"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["defenseRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["dodgeRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["dodgePercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["parryRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["parryPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["blockRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["blockPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["blockValue"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["resilience"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			--critReduction is the reduction to the chance of being critically struck by *melee attacks*
			--We don't track this for spells or ranged attacks because.
			--things like some talents, Defense skill, and Resilience increase this.
			--Note that Defense skill is technically supposed to increase it in relation
			--to the attacker's Weapon Skill, but for our purposes this doesn't matter
			["critReduction"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			--hitReduction is the same as critReduction, except for chance of being hit in melee
			--some talents add this, as does the Defense skill
			["hitReduction"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		["physical"] = {
			["hasteRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hitRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			--hitPercent is things like talent that give you flat hit chance percentages
			--It's not shown in the character sheet AFAIK but we'll collect it anyway
			--this here is generic physical (melee+ranged), then there's specific ones and a spell one
			["hitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["armorPen"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			--["increasedAttackSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		["melee"] = {
			["attackPower"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["expertiseRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["expertise"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["critRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["critPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["increasedAttackSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["mainHandDmgMin"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandDmgMax"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandDps"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandExpertise"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["mainHandCritRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["mainHandDamageMultiplier"] = {["base"] = 1, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["offHandDmgMin"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 0.5}, 
			["offHandDmgMax"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 0.5}, 
			["offHandDps"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["offHandSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["offHandExpertise"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["offHandCritRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["offHandCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["offHandDamageMultiplier"] = {["base"] = 1, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		["ranged"] = {
			["attackPower"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["increasedAttackSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["damageMultiplier"] = {["base"] = 1, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["dmgMin"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["dmgMax"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["dps"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["speed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["critRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["critPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["ammoDps"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			},
		
		["spell"] = {
			["damage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["holyDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["fireDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["natureDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["frostDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["shadowDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["arcaneDamage"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["healing"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hitRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["holyHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["fireHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["natureHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["frostHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["shadowHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["arcaneHitPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["critRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["critPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["holyCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["fireCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["natureCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["frostCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["shadowCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["arcaneCritPercent"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["hasteRating"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}, 
			["increasedAttackSpeed"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1},
			["penetration"] = {["base"] = 0, ["posMod"] = 0, ["negMod"] = 0, ["mult"] = 1}
			}
	};

	return stats;
end

function ScrubBuster:AddAuras(stats, auras, weaponStats, itemStats, level, class, special)
--adds all auras in a table to the main stats

	for _,aura in pairs(auras) do
		if aura["isTalent"] then
			local rank = aura["talentRank"];
			local effect = aura["func"](rank, stats, weaponStats, itemStats, level, special);
			stats = ScrubBuster:AddStat(stats, effect);
		
		elseif aura["isRacial"] then
			local effect = aura["func"](weaponStats, class);
			stats = ScrubBuster:AddStat(stats, effect);
			
		end
		
	end
	
	return stats;
end

function ScrubBuster:AddStat(mainStats, addStats) --adds stats to the stats table
--both parameters must be tables and in the stat table format.
--mainStats should be the complete table with all values initialized, for addStats it doesn't matter

	for cat,stats in pairs(addStats) do
		for stat,values in pairs(stats) do
			for k,v in pairs(values) do
				--this is where the stuff actually happens
				local main = mainStats[cat][stat];

				if stat == "increasedAttackSpeed" then
					--haste has special treatment
					if k == "mult" then
						main["mult"] = main["mult"] * v;
					else
						main[k] = (1 + main[k]) * (1 + v) - 1;
					end
					
					
				else
					--rest of the stats should be uniform
					if k == "mult" then
						main["mult"] = main["mult"] * v;
					else
						main[k] = main[k] + v;
					end
				end
			end
		end
	end

	return mainStats;
end

function ScrubBuster:GetStats(target, spec)
--Gets the total stats of the player
--If target is inspect make sure to call NotifyInspect before this or results will be incorrect
--Talents for the target must be ready before this runs, or else talentbonuses will not be properly
--added, so if calling this for target other than the player make sure to call this from the
--INSPECT_TALENTS_READY eventhandler or something
--Returns int level, table stats, table weaponStats
	
	--get some info about target
	local _, race = UnitRace(target);
	local level = UnitLevel(target);
	if level == -1 then level = 70 end; --if someone's level ?? (over 10 levels above you, or a boss), we'll just assume they're level 70.
	local _, class = UnitClass(target);
	local classID = ClassNameToID[class];
	local inspect = not UnitIsUnit("player", target); --if true, we're checking the inspected target

	local stats = ScrubBuster:InitStatsTable(); --see initStatsTable function for structure of table
	
	local canBlock = false; --whether they have the Block skill, without it they will have 0% block chance always
	local canParry = false; --same as above except for parry
	
	local weaponStats = { --these are the raw weapon stats, whereas stats table has modified ones
		mainHand = {
			hasItem = false, --true if a weapon (or something at all) is found in this slot
			isWeapon = false, --true if the item is a weapon
			weaponType = {}, --type of the weapon as supplied by the tooltip scanning function (table, [1] is handcount, [2] is class)
			damage = {}, --table of different damage schools on the weapon, supplied by the weapon tooltip scanning function
			speed = nil, --base weapon speed
			dps = nil, --dps as it appears on the tooltip
			iLvl = nil; --item level
			itemId = nil; --item ID
		},
		offHand = {
			hasItem = false,
			isWeapon = false,
			weaponType = {},
			damage = {},
			speed = nil,
			dps = nil,
			iLvl = nil;
			itemId = nil;
		},
		ranged = {
			hasItem = false,
			isWeapon = false,
			weaponType = {},
			damage = {},
			speed = nil,
			dps = nil,
			iLvl = nil;
			itemId = nil;
		},
		ammo = { --we can't actually get ammo for inspect targets but what the hell
			hasItem = false,
			weaponType = nil, --ammo is a little special as in we only have two types for it, "BULLET" and "ARROW"
			dps = {}, --ammo only has dps (how much dps it adds to the weapon), not a damage range like weapons.
					  --This is a table of the different DPS schools it can have, gotten from the scanner function.
			iLvl = nil;
			itemId = nil;
		},
		dualWielding = false; --whether they're dual wielding or not. Assume they're not.
	};

	--This table will contain talentaura effects. They have different priorities
	--to decide when their effects are resolved, which are the keys in this table:
	--1 will be done first, followed by 2 and so forth.
	
	--Priority 1 is things that modify a primary stat, and don't depend on any other stats
	--For instance, +10 intellect
	--Priority 2 is things that modify a secondary stat, and don't depend on any other stats
	--For instance, +20 attack power
	--Priority 3 is things that depend on primary stats somehow.
	--For instance, "15% of your intellect is converted into attack power". Some talents are like this.
	--Priority 4 is things that depend on secondary stats somehow. I dunno if any exist.
	local auras = { [1] = {}, [2] = {}, [3] = {} };
	
	--Sanity check the specials
	local special = spec;
	if not special then
		special = {};
	end
	
	
	if special["quiverIAS"] and class ~= "WARRIOR" and class ~= "ROGUE" and class ~= "HUNTER" then
		special["quiverIAS"] = nil;
	end
	if special["ammoDPS"] and class ~= "WARRIOR" and class ~= "ROGUE" and class ~= "HUNTER" then
		special["ammoDPS"] = nil;
	end
	if special["warriorStance"] and class ~= "WARRIOR" then
		special["warriorStance"] = nil;
	end
	if special["druidForm"] and class ~= "DRUID" then
		special["druidForm"] = nil;
	end
	
	
	------------------
	--ADD BASE STATS--
	------------------
	
	--add basestats to stats
	for k,v in pairs(ScrubBuster.BaseStats[race][class][level]) do
		stats["primary"][k]["base"] = stats["primary"][k]["base"] + v;
	end
	
	--health and mana, based on class
	for k,v in pairs(ScrubBuster.BaseHealthMana[class][level]) do
		stats["resource"][k]["base"] = stats["resource"][k]["base"] + v;
	end
	
	
	--base secondary stats
	
	--dodge, curiously enough base dodge can be negative for some classes
	
	stats["defense"]["dodgePercent"]["base"] = stats["defense"]["dodgePercent"]["base"] + ScrubBuster.BaseDodge[classID];
	
	--Block, classes with shields will essentially have 5% base block chance through passive skill Block
	--this is Warriors, Paladins, Shamans
	if class == "WARRIOR" or class == "PALADIN" or class == "SHAMAN" then
		canBlock = true;
		stats["defense"]["blockPercent"]["base"] = stats["defense"]["blockPercent"]["base"] + 5.00;
	end
	
	--Parry, all melee classes except Shamans have this as a passive ability. Enhancement shamans get it
	--through a talent.
	--warriors can get the ability at level 6, hunters and paladins at 8, rogues at 12. We'll just assume
	--they have the ability as soon as they're of that level
	if class == "WARRIOR" and level >= 6 then
		canParry = true;
		stats["defense"]["parryPercent"]["base"] = stats["defense"]["parryPercent"]["base"] + 5.00;
	elseif (class == "HUNTER" or class == "PALADIN") and level >= 8 then
		canParry = true;
		stats["defense"]["parryPercent"]["base"]  = stats["defense"]["parryPercent"]["base"] + 5.00;
	elseif class == "ROGUE" and level >= 12 then
		canParry = true;
		stats["defense"]["parryPercent"]["base"] = stats["defense"]["parryPercent"]["base"] + 5.00;
	elseif class == "SHAMAN" then
		local _, _, _, _, talentRank = GetTalentInfo(2, 13, inspect);
		if talentRank > 0 then
			canParry = true;
			stats["defense"]["parryPercent"]["base"] = stats["defense"]["parryPercent"]["base"] + 5.00;
		end
	end
	
	--defense, this is technically a skill and we can't get it, but generally everyone will have it at
	--the maximum value allowed for their level (level*5) so we'll just go with that
	stats["defense"]["defense"]["base"] = stats["defense"]["defense"]["base"] + level * 5;
	
	--Spell crit, all classes have a different base spell crit as well as different spellcrit from int gain
	stats["spell"]["critPercent"]["base"] = stats["spell"]["critPercent"]["base"] + ScrubBuster.BaseSpellCrit[classID];
	
	--Physical crit, same story as for spellcrit but this was a lot harder to figure out for some reason
	stats["melee"]["critPercent"]["base"] = stats["melee"]["critPercent"]["base"] + ScrubBuster.BaseCrit[classID];
	stats["ranged"]["critPercent"]["base"] = stats["ranged"]["critPercent"]["base"] + ScrubBuster.BaseCrit[classID];
	
	--Melee attack power, some classes gain this from levels
	if class == "WARRIOR" or class == "PALADIN" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + level * 3;
	elseif class == "SHAMAN" or class == "ROGUE" or class == "HUNTER" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + level * 2;
	elseif class == "DRUID" and special["druidForm"] == "cat" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + level * 2;
	elseif class == "DRUID" and special["druidForm"] == "bear" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + level * 3;
	end
	
	--Ranged attack power, some classes get this from levels
	if class == "HUNTER" then
		stats["ranged"]["attackPower"]["base"] = stats["ranged"]["attackPower"]["base"] + level * 2;
	elseif class == "WARRIOR" or class == "ROGUE" then
		stats["ranged"]["attackPower"]["base"] = stats["ranged"]["attackPower"]["base"] + level;
	end
	
	---------------------------------------
	--Handle any weapons they might wield--
	---------------------------------------
	
	local itemlink16 = GetInventoryItemLink(target, 16); --slot 16, main hand
	local itemlink17 = GetInventoryItemLink(target, 17); --slot 17, off hand
	local itemlink18, itemlink0;
	if not UnitHasRelicSlot(target) then	
		itemlink18 = GetInventoryItemLink(target, 18); --slot 18, ranged
		itemlink0 = GetInventoryItemLink(target, 0); --slot 0, ammo
	end
	
	-- Slot16
	if itemlink16 then
		local wstats = weaponStats.mainHand;
		wstats.hasItem = true;
		_,_,_,wstats.iLvl = GetItemInfo(itemlink16);
		wstats.itemId = tonumber(string.match(itemlink16, "|c%x%x%x%x%x%x%x%x|Hitem:(%d+):"));
		wstats.damage, wstats.speed, wstats.dps, wstats.weaponType, wstats.isWeapon = ScrubBuster:ScanWeapTooltip(itemlink16);
		local dmgmin, dmgmax = ScrubBuster:CombineDamageTable(wstats.damage);
		if wstats.weaponType then --only do stuff if we could figure out it's actually a weapon to begin with
			--some sanity checking must be necessary here, in case the item wasn't a proper weapon
			if not wstats.speed then wstats.speed = 2.00 end --we'll just give it unarmed speed
			
			--it puts the stats in the table or it gets the hose
			--this is the first time we actually get these, so no need to add just assign
			stats["melee"]["mainHandDmgMin"]["base"] = dmgmin;
			stats["melee"]["mainHandDmgMax"]["base"] = dmgmax;
			--stats.MAINHANDDPS = dps; --actually, let's calculate this later
			stats["melee"]["mainHandSpeed"]["base"] = wstats.speed;			
		else --if we couldn't figure out what kind of weapon it is, fallback to unarmed
			stats["melee"]["mainHandDmgMin"]["base"] = 1;
			stats["melee"]["mainHandDmgMax"]["base"] = 2;
			stats["melee"]["mainHandSpeed"]["base"] = 2.00;
		end
	else --the itemlink is nil, so they're unarmed
		stats["melee"]["mainHandDmgMin"]["base"] = 1;
		stats["melee"]["mainHandDmgMax"]["base"] = 2;
		stats["melee"]["mainHandSpeed"]["base"] = 2.00;
	end
	
	-- Slot17
	if itemlink17 then
		local wstats = weaponStats.offHand;
		wstats.hasItem = true;
		_,_,_,wstats.iLvl = GetItemInfo(itemlink17);
		wstats.itemId = tonumber(string.match(itemlink17, "|c%x%x%x%x%x%x%x%x|Hitem:(%d+):"));
		wstats.damage, wstats.speed, wstats.dps, wstats.weaponType, wstats.isWeapon = ScrubBuster:ScanWeapTooltip(itemlink17);
		local dmgmin, dmgmax = ScrubBuster:CombineDamageTable(wstats.damage);
		if wstats.weaponType and not (wstats.weaponType[2] == "OFFHANDITEM" or wstats.weaponType[2] == "SHIELD") then
			--only do stuff if it's relevant
			weaponStats["dualWielding"] = true;
			if not wstats.speed then wstats.speed = 2.00 end --same sanity check as above
			stats["melee"]["offHandDmgMin"]["base"] = dmgmin;
			stats["melee"]["offHandDmgMax"]["base"] = dmgmax;
			stats["melee"]["offHandSpeed"]["base"] = wstats.speed;
		else --their offhand isn't a weapon
			stats["melee"]["offHandDmgMin"]["base"] = 0;
			stats["melee"]["offHandDmgMax"]["base"] = 0;
			stats["melee"]["offHandSpeed"]["base"] = 2.00;
		end
	else --the itemlink is nil
		stats["melee"]["offHandDmgMin"]["base"] = 0;
		stats["melee"]["offHandDmgMax"]["base"] = 0;
		stats["melee"]["offHandSpeed"]["base"] = 2.00;
	end
	
	-- Slot18
	if itemlink18 then
		local wstats = weaponStats.ranged;
		wstats.hasItem = true;
		_,_,_,wstats.iLvl = GetItemInfo(itemlink18);
		wstats.itemId = tonumber(string.match(itemlink18, "|c%x%x%x%x%x%x%x%x|Hitem:(%d+):"));
		wstats.damage, wstats.speed, wstats.dps, wstats.weaponType, wstats.isWeapon = ScrubBuster:ScanWeapTooltip(itemlink18);
		local dmgmin, dmgmax = ScrubBuster:CombineDamageTable(wstats.damage);
		if wstats.weaponType then
			if not wstats.speed then wstats.speed = 2.00 end
			stats["ranged"]["dmgMin"]["base"] = dmgmin;
			stats["ranged"]["dmgMax"]["base"] = dmgmax;
			stats["ranged"]["speed"]["base"] =  wstats.speed;
		end
	else --the itemlink is null, so they have no ranged
		stats["ranged"]["dmgMin"]["base"] = 1;
		stats["ranged"]["dmgMax"]["base"] = 2;
		stats["ranged"]["speed"]["base"] = 2.00; --these are actually the base ranged values, although character sheet shows N/A if you have no ranged weapon
	end
	
	-- Slot0, ammo (can't see for inspect, but we can guess it):
	if itemlink0 then
		local wstats = weaponStats.ammo;
		wstats.hasItem = true;
		_,_,_,wstats.iLvl = GetItemInfo(itemlink0);
		wstats.itemId = tonumber(string.match(itemlink0, "|c%x%x%x%x%x%x%x%x|Hitem:(%d+):"));
		wstats.dps, wstats.weaponType = ScrubBuster:ScanAmmoTooltip(itemlink0);
		if wstats.dps and wstats.weaponType then --we'll only do anything if we figure out everything we want about the ammo
			--combine the ammo DPS table into one, since for now we only need the total deeps for anything
			for _,v in pairs(wstats.dps) do
				stats["ranged"]["ammoDps"]["base"] = stats["ranged"]["ammoDps"]["base"] + v;
			end
		end	
		
	elseif special["ammoDPS"] then
		local wstats = weaponStats.ammo;
		wstats.hasItem = true;
		wstats.dps = special["ammoDPS"]
		if weaponStats.ranged.weaponType[2] == "BOW" then wstats.weaponType = "ARROW";
		elseif weaponStats.ranged.weaponType[2] == "CROSSBOW" then wstats.weaponType = "ARROW";
		else
		--we'll default to bullet in case there's no ranged weapon, whatever, it's not like
		--this stat will get used if that's the case
			wstats.weaponType = "BULLET";
		end
		stats["ranged"]["ammoDps"]["base"] = stats["ranged"]["ammoDps"]["base"] + wstats.dps;
	end

	
	--Add ammo damage to weapon damage, if it's applicable
	--check for Thori'dal (which is the only? weapon that doesn't use or benefit from ammo), too...
	if weaponStats.ranged.hasItem and weaponStats.ammo.hasItem and weaponStats.ranged.itemId ~= 34334 then
		if weaponStats.ranged.weaponType[2] == "BOW" and weaponStats.ammo.weaponType == "ARROW" then
			local dmg = stats["ranged"]["ammoDps"]["base"] * stats["ranged"]["speed"]["base"];
			stats["ranged"]["dmgMin"]["base"] = stats["ranged"]["dmgMin"]["base"] + dmg;
			stats["ranged"]["dmgMax"]["base"] = stats["ranged"]["dmgMax"]["base"] + dmg;
		elseif weaponStats.ranged.weaponType[2] == "CROSSBOW" and weaponStats.ammo.weaponType == "ARROW" then
			local dmg = stats["ranged"]["ammoDps"]["base"] * stats["ranged"]["speed"]["base"];
			stats["ranged"]["dmgMin"]["base"] = stats["ranged"]["dmgMin"]["base"] + dmg;
			stats["ranged"]["dmgMax"]["base"] = stats["ranged"]["dmgMax"]["base"] + dmg;
		elseif weaponStats.ranged.weaponType[2] == "GUN" and weaponStats.ammo.weaponType == "BULLET" then
			local dmg = stats["ranged"]["ammoDps"]["base"] * stats["ranged"]["speed"]["base"];
			stats["ranged"]["dmgMin"]["base"] = stats["ranged"]["dmgMin"]["base"] + dmg;
			stats["ranged"]["dmgMax"]["base"] = stats["ranged"]["dmgMax"]["base"] + dmg;
		end
	end
	
	----------------------------------------------
	--Scan target's equipment using BonusScanner--
	----------------------------------------------
	
	local itemStats = BonusScanner:ScanEquipment(target);	
	--convert the stats from bonusscanner to a digestable format:
	itemStats = ScrubBuster:ConvertBStoSB(itemStats);
	
	--combine bonusscanner-gotten stats with our own stats
	for k,v in pairs(itemStats) do
		for k2,v2 in pairs(v) do
			stats[k][k2]["posMod"] = stats[k][k2]["posMod"] + v2["posMod"];
		end
	end
	
	
	--If they're a hunter, we need to crudely guess the IAS their quiver gives.
	--No one else *should* be wearing quivers/ammo pouches than hunters.
	--[[
	if class == "HUNTER" then
		local quiverias;
		if level >= 60 then
			quiverias = 0.15;
		elseif level >= 40 then
			quiverias = 0.13;
		elseif level >= 30 then
			quiverias = 0.12;
		else
			quiverias = 0.1;
		end
		stats["ranged"]["increasedAttackSpeed"]["posMod"] = (1 + stats["ranged"]["increasedAttackSpeed"]["posMod"]) * (1 + quiverias) - 1;
	end
	]]
	
	--Get the quiver tier from the special variables if it exists, otherwise don't give them a quiver
	--only apply quiver IAS if they have a weapon that benefits from it (bow, xbow, gun)
	if special["quiverIAS"] then
		local weaponType = weaponStats["ranged"]["weaponType"][2];
		if weaponType == "GUN" or weaponType == "BOW" or weaponType == "CROSSBOW" then
			stats["ranged"]["increasedAttackSpeed"]["posMod"] = (1 + stats["ranged"]["increasedAttackSpeed"]["posMod"]) * (1 + special["quiverIAS"]) - 1;
		end
	end
	
	--Add generic special stuff, like Berserker Stance crit, defensive stance damage reduction
	if special["warriorStance"] == "defensive" then
		local temp = stats["melee"];
		temp["mainHandDamageMultiplier"]["mult"] = temp["mainHandDamageMultiplier"]["mult"] * 0.9;
		temp["offHandDamageMultiplier"]["mult"] = temp["offHandDamageMultiplier"]["mult"] * 0.9;
		stats["ranged"]["damageMultiplier"]["mult"] = stats["ranged"]["damageMultiplier"]["mult"] * 0.9;
	elseif special["warriorStance"] == "berserker" then
		stats["melee"]["critPercent"]["base"] = stats["melee"]["critPercent"]["base"] + 3;
		stats["ranged"]["critPercent"]["base"] = stats["ranged"]["critPercent"]["base"] + 3;
	end
	
	if special["druidForm"] == "bear" then
		local temptable = {
			["isTalent"] = true; --we'll treat this thing like a talent even though it's not
			["talentRank"] = 1; --since it'll work this way anyway and we don't have to restructure ou're systems :^)
			["func"] = nil;
		};
		local temptable2 = {
			["isTalent"] = true; --also this thing needs two effects, armor and stamina
			["talentRank"] = 1;
			["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["primary"] = {
					["sta"] = { ["mult"] = 1.25 }
				} };
				return aura;
			end
		};
		if level < 40 then
			temptable["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * 1.8 }
				} };
				return aura;
			end
		else
			temptable["func"] = function(rank, stats, weaponStats, itemStats, level, special)
				local aura = { ["defense"] = {
					["armor"] = { ["base"] = itemStats["defense"]["armor"]["posMod"] * 4 }
				} };
				return aura;
			end
		end
		table.insert(auras[2], temptable);
		table.insert(auras[1], temptable2);
	end
	
	local temp = level;
	if temp > 60 then temp = 60 end;
	if special["druidForm"] == "bear" then
		stats["melee"]["mainHandSpeed"]["base"] = 2.50;
		stats["melee"]["mainHandDmgMin"]["base"] = temp * 0.85 * 2.50;
		stats["melee"]["mainHandDmgMax"]["base"] = temp * 1.25 * 2.50;
	elseif special["druidForm"] == "cat" then
		stats["melee"]["mainHandSpeed"]["base"] = 1.00;
		stats["melee"]["mainHandDmgMin"]["base"] = temp * 0.85;
		stats["melee"]["mainHandDmgMax"]["base"] = temp * 1.25;
	end

	--------------------------------------------------
	--ADD RACIAL/BUFF/TALENT BONUSES TO STATS--
	--------------------------------------------------
	
	--racial bonuses, most of 'em at least (some exceptions like tauren health are added later on)
	auras = ScrubBuster:GetRacials(race, class, stats, weaponStats, auras);

	--Get talents
	auras = ScrubBuster:GetTalents(inspect, class, auras);
		
	--Before going on to secondary stats, add "priority 1" auras, ie. auras that affect primary stats
	stats = ScrubBuster:AddAuras(stats, auras[1], weaponStats, itemStats, level, class, special);
	
	--Apply multipliers for primary stats
	for k,v in pairs(stats["primary"]) do
		v["base"] = v["base"] * v["mult"] + (v["posMod"] * v["mult"] - v["posMod"]);
	end
	
	------------------------------
	--FIGURE OUT SECONDARY STATS--
	------------------------------
	--we need to figure out secondary stats gained from primary stats.
	--secondary stats being stuff like attack power and such
	local tempStr = stats["primary"]["str"]["base"] + stats["primary"]["str"]["posMod"] + stats["primary"]["str"]["negMod"];
	local tempAgi = stats["primary"]["agi"]["base"] + stats["primary"]["agi"]["posMod"] + stats["primary"]["agi"]["negMod"];
	local tempSta = stats["primary"]["sta"]["base"] + stats["primary"]["sta"]["posMod"] + stats["primary"]["sta"]["negMod"];
	local tempInt = stats["primary"]["int"]["base"] + stats["primary"]["int"]["posMod"] + stats["primary"]["int"]["negMod"];
	local tempSpi = stats["primary"]["spi"]["base"] + stats["primary"]["spi"]["posMod"] + stats["primary"]["spi"]["negMod"];
	
	--Strength--
	if class == "WARRIOR" or class == "SHAMAN" or class == "DRUID" or class == "PALADIN" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + tempStr * 2 - 20;
	elseif class == "ROGUE" or class == "HUNTER" or class == "MAGE" or class == "PRIEST" or class == "WARLOCK" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + tempStr - 10;
	end
	
	if class == "WARRIOR" or class == "SHAMAN" or class == "PALADIN" then
		stats["defense"]["blockValue"]["base"] = stats["defense"]["blockValue"]["base"] + math.floor(tempStr / 20 - 1);
	end

	

	--Agility--
	if class == "HUNTER" or class == "ROGUE" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + tempAgi - 10;
	elseif class == "DRUID" and special["druidForm"] == "cat" then
		stats["melee"]["attackPower"]["base"] = stats["melee"]["attackPower"]["base"] + tempAgi;
	end
	stats["ranged"]["attackPower"]["base"] = stats["ranged"]["attackPower"]["base"] + tempAgi - 10;
	
	stats["defense"]["armor"]["base"] = stats["defense"]["armor"]["base"] + (tempAgi * 2);
	stats["melee"]["critPercent"]["base"] = stats["melee"]["critPercent"]["base"] + tempAgi * ScrubBuster.CritPerAgi[level][classID]
	stats["ranged"]["critPercent"]["base"] = stats["ranged"]["critPercent"]["base"] + tempAgi * ScrubBuster.CritPerAgi[level][classID]
	stats["defense"]["dodgePercent"]["base"] = stats["defense"]["dodgePercent"]["base"] + tempAgi / ScrubBuster.AgiDodgeRatio[classID];
	

	--Stamina--
	stats["resource"]["health"]["base"] = stats["resource"]["health"]["base"] + tempSta * 10 - 180;
	
	--Intellect--
	stats["resource"]["mana"]["base"] = stats["resource"]["mana"]["base"] + tempInt * 15 - 280;
	stats["spell"]["critPercent"]["base"] = stats["spell"]["critPercent"]["base"] + tempInt * ScrubBuster.SpellCritPerInt[level][classID];
	
	--Spirit--
	local tempBaseSpi = tempSpi;
	if tempBaseSpi > 50 then tempBaseSpi = 50; end
	local tempExtraSpi = tempSpi - tempBaseSpi;
	stats["resource"]["healthRegen"]["base"] = stats["resource"]["healthRegen"]["base"] + (tempBaseSpi * ScrubBuster.HealthRegenPerSpi50[level][classID] + tempExtraSpi * ScrubBuster.HealthRegenPerSpi[classID]);
	stats["resource"]["manaRegen"]["base"] = stats["resource"]["manaRegen"]["base"] + (0.001 + tempSpi * ScrubBuster.BaseManaRegenPerSpi[level] * (tempInt ^ 0.5)) * 5;
	
	
	---Now that secondary stats are figured out, add secondary stat auras
	stats = ScrubBuster:AddAuras(stats, auras[2], weaponStats, itemStats, level, class, special);
	

		
	-----------------------
	---SORT OUT RATINGS----
	-----------------------

	--Get IAS from haste rating and add it to melee and ranged IAS
	local tempTotalHaste = stats["physical"]["hasteRating"]["base"] + stats["physical"]["hasteRating"]["posMod"] + stats["physical"]["hasteRating"]["negMod"];
	local tempIAS = StatLogic:GetEffectFromRating(tempTotalHaste, CR_HASTE_MELEE, level);
	tempIAS = tempIAS / 100;
	stats["melee"]["increasedAttackSpeed"]["posMod"] = (1 + stats["melee"]["increasedAttackSpeed"]["posMod"]) * (1 + tempIAS) - 1;
	stats["ranged"]["increasedAttackSpeed"]["posMod"] = (1 + stats["ranged"]["increasedAttackSpeed"]["posMod"]) * (1 + tempIAS) - 1;
	
	--Get increased cast speed from spellhaste and add it to spell IAS
	local tempTotalHaste = stats["spell"]["hasteRating"]["base"] + stats["spell"]["hasteRating"]["posMod"] + stats["spell"]["hasteRating"]["negMod"];
	local tempIAS = StatLogic:GetEffectFromRating(tempTotalHaste, CR_HASTE_SPELL, level);
	tempIAS = tempIAS / 100;
	stats["spell"]["increasedAttackSpeed"]["posMod"] = (1 + stats["spell"]["increasedAttackSpeed"]["posMod"]) * (1 + tempIAS) - 1;
	
	--Get defense from defense rating and add it to defense stat
	local tempDefRating = stats["defense"]["defenseRating"]["base"] + stats["defense"]["defenseRating"]["posMod"] + stats["defense"]["defenseRating"]["negMod"];
	local tempDefense = math.floor(StatLogic:GetEffectFromRating(tempDefRating, CR_DEFENSE_SKILL, level));
	stats["defense"]["defense"]["posMod"] = stats["defense"]["defense"]["posMod"] + tempDefense;
	
	--Get dodge from dodge rating and add it to dodge percent stat
	local tempDodgeRating = stats["defense"]["dodgeRating"]["base"] + stats["defense"]["dodgeRating"]["posMod"] + stats["defense"]["dodgeRating"]["negMod"];
	local tempDodge = StatLogic:GetEffectFromRating(tempDodgeRating, CR_DODGE, level);
	stats["defense"]["dodgePercent"]["posMod"] = stats["defense"]["dodgePercent"]["posMod"] + tempDodge;
	
	--Get parry from parry rating and add it to parry percent stat
	local tempParryRating = stats["defense"]["parryRating"]["base"] + stats["defense"]["parryRating"]["posMod"] + stats["defense"]["parryRating"]["negMod"];
	local tempParry = StatLogic:GetEffectFromRating(tempParryRating, CR_PARRY, level);
	stats["defense"]["parryPercent"]["posMod"] = stats["defense"]["parryPercent"]["posMod"] + tempParry;
	
	--get block from block rating and add it to block percent stat
	local tempBlockRating = stats["defense"]["blockRating"]["base"] + stats["defense"]["blockRating"]["posMod"] + stats["defense"]["blockRating"]["negMod"];
	local tempBlock = StatLogic:GetEffectFromRating(tempBlockRating, CR_BLOCK, level);
	stats["defense"]["blockPercent"]["posMod"] = stats["defense"]["blockPercent"]["posMod"] + tempBlock;
	
	--get melee crit from melee crit rating and add it to melee crit percent stat
	local tempCritRating = stats["melee"]["critRating"]["base"] + stats["melee"]["critRating"]["posMod"] + stats["melee"]["critRating"]["negMod"];
	local tempCrit = StatLogic:GetEffectFromRating(tempCritRating, CR_CRIT_MELEE, level);
	stats["melee"]["critPercent"]["posMod"] = stats["melee"]["critPercent"]["posMod"] + tempCrit;
	
	--get ranged crit from ranged crit rating and add it to ranged crit percent stat
	local tempCritRating = stats["ranged"]["critRating"]["base"] + stats["ranged"]["critRating"]["posMod"] + stats["ranged"]["critRating"]["negMod"];
	local tempCrit = StatLogic:GetEffectFromRating(tempCritRating, CR_CRIT_RANGED, level);
	stats["ranged"]["critPercent"]["posMod"] = stats["ranged"]["critPercent"]["posMod"] + tempCrit;
	
	--get spell crit from spell crit rating and add it to spell crit percent stat
	local tempCritRating = stats["spell"]["critRating"]["base"] + stats["spell"]["critRating"]["posMod"] + stats["spell"]["critRating"]["negMod"];
	local tempCrit = StatLogic:GetEffectFromRating(tempCritRating, CR_CRIT_SPELL, level);
	stats["spell"]["critPercent"]["posMod"] = stats["spell"]["critPercent"]["posMod"] + tempCrit;
	
	--get expertise from expertise rating and add it to expertise stat
	local tempExpRating = stats["melee"]["expertiseRating"]["base"] + stats["melee"]["expertiseRating"]["posMod"] + stats["melee"]["expertiseRating"]["negMod"];
	local tempExp = math.floor(StatLogic:GetEffectFromRating(tempExpRating, CR_EXPERTISE, level));
	stats["melee"]["expertise"]["posMod"] = stats["melee"]["expertise"]["posMod"] + tempExp;
	
	--get physical hit chance from hit rating and add it to hit percent stat
	local tempHitRating = stats["physical"]["hitRating"]["base"] + stats["physical"]["hitRating"]["posMod"] + stats["physical"]["hitRating"]["negMod"];
	local tempHit = StatLogic:GetEffectFromRating(tempHitRating, 6, level);
	stats["physical"]["hitPercent"]["base"] = stats["physical"]["hitPercent"]["base"] + tempHit;
	
	--get spell hit chance from spell hit rating and add it to spell hit percent stat
	local tempSpellHitRating = stats["spell"]["hitRating"]["base"] + stats["spell"]["hitRating"]["posMod"] + stats["spell"]["hitRating"]["negMod"];
	local tempSpellHit = StatLogic:GetEffectFromRating(tempSpellHitRating, 8, level);
	stats["spell"]["hitPercent"]["base"] = stats["spell"]["hitPercent"]["base"] + tempSpellHit;

	
	--Add effect of defense skill on dodge, block and parry, and chance to be critically hit or hit
	--this assumes an equal level opponent
	local temp = stats["defense"]
	local tempDefense = temp["defense"]["base"] + temp["defense"]["posMod"] + temp["defense"]["negMod"];
	local tempDefEffect = (tempDefense - level * 5) * 0.04;
	temp["dodgePercent"]["base"] = temp["dodgePercent"]["base"] + tempDefEffect;
	temp["parryPercent"]["base"] = temp["parryPercent"]["base"] + tempDefEffect;
	temp["blockPercent"]["base"] = temp["blockPercent"]["base"] + tempDefEffect;
	temp["critReduction"]["base"] = temp["critReduction"]["base"] + tempDefEffect;
	temp["hitReduction"]["base"] = temp["hitReduction"]["base"] + tempDefEffect;
	
	--Add effect of resilience on critReduction
	local tempResilience = temp["resilience"]["base"] + temp["resilience"]["posMod"] + temp["resilience"]["negMod"];
	local tempResEffect = StatLogic:GetEffectFromRating(tempResilience, CR_CRIT_TAKEN_MELEE, level);
	temp["critReduction"]["base"] = temp["critReduction"]["base"] + tempResEffect;
	
	
	--Add common expertise to mainhand and offhand expertises
	local temp = stats["melee"]
	temp["mainHandExpertise"]["base"] = temp["mainHandExpertise"]["base"] + temp["expertise"]["base"];
	temp["mainHandExpertise"]["posMod"] = temp["mainHandExpertise"]["posMod"] + temp["expertise"]["posMod"];
	temp["mainHandExpertise"]["negMod"] = temp["mainHandExpertise"]["negMod"] + temp["expertise"]["negMod"];
	temp["offHandExpertise"]["base"] = temp["offHandExpertise"]["base"] + temp["expertise"]["base"];
	temp["offHandExpertise"]["posMod"] = temp["offHandExpertise"]["posMod"] + temp["expertise"]["posMod"];
	temp["offHandExpertise"]["negMod"] = temp["offHandExpertise"]["negMod"] + temp["expertise"]["negMod"];
	

	--Add common physical hit chance to melee and ranged hit chances
	temp["hitPercent"]["base"] = temp["hitPercent"]["base"] + stats["physical"]["hitPercent"]["base"];
	temp["hitPercent"]["posMod"] = temp["hitPercent"]["posMod"] + stats["physical"]["hitPercent"]["posMod"];
	temp["hitPercent"]["negMod"] = temp["hitPercent"]["negMod"] + stats["physical"]["hitPercent"]["negMod"];
	local temp = stats["ranged"];
	temp["hitPercent"]["base"] = temp["hitPercent"]["base"] + stats["physical"]["hitPercent"]["base"];
	temp["hitPercent"]["posMod"] = temp["hitPercent"]["posMod"] + stats["physical"]["hitPercent"]["posMod"];
	temp["hitPercent"]["negMod"] = temp["hitPercent"]["negMod"] + stats["physical"]["hitPercent"]["negMod"];
	
	
	--Add general spell damage to specific school spell damages
	local schools = { "holy", "fire", "nature", "frost", "shadow", "arcane" };
	local tempBase = stats["spell"]["damage"]["base"];
	local tempPosMod = stats["spell"]["damage"]["posMod"];
	local tempNegMod = stats["spell"]["damage"]["negMod"];
	for i = 1, 6 do
		local stat = stats["spell"][schools[i].."Damage"];
		stat["base"] = stat["base"] + tempBase;
		stat["posMod"] = stat["posMod"] + tempPosMod;
		stat["negMod"] = stat["negMod"] + tempNegMod;
	end
	
	--do the same for crit chance
	local tempBase = stats["spell"]["critPercent"]["base"];
	local tempPosMod = stats["spell"]["critPercent"]["posMod"];
	local tempNegMod = stats["spell"]["critPercent"]["negMod"];
	for i = 1, 6 do
		local stat = stats["spell"][schools[i].."CritPercent"];
		stat["base"] = stat["base"] + tempBase;
		stat["posMod"] = stat["posMod"] + tempPosMod;
		stat["negMod"] = stat["negMod"] + tempNegMod;
	end
	
	--....and for hit chance
	local tempBase = stats["spell"]["hitPercent"]["base"];
	local tempPosMod = stats["spell"]["hitPercent"]["posMod"];
	local tempNegMod = stats["spell"]["hitPercent"]["negMod"];
	for i = 1, 6 do
		local stat = stats["spell"][schools[i].."HitPercent"];
		stat["base"] = stat["base"] + tempBase;
		stat["posMod"] = stat["posMod"] + tempPosMod;
		stat["negMod"] = stat["negMod"] + tempNegMod;
	end
	
	--priority 3 auras, aka the special needs auras
	stats = ScrubBuster:AddAuras(stats, auras[3], weaponStats, itemStats, level, class, special);
	
	--Apply non-primary stat multipliers
	for k,v in pairs(stats) do
		if k ~= "primary" then
			for k2,v2 in pairs(v) do
				v2["base"] = v2["base"] * v2["mult"] + (v2["posMod"] * v2["mult"] - v2["posMod"]);
			end
		end
	end
	
	------------------------
	---REST OF THE THINGS---
	------------------------
	
	--Attack power to damage
	--AP/14*speed + weapondamage is the final damage as appears on the character sheet
	local tempAP = stats["melee"]["attackPower"]["base"] + stats["melee"]["attackPower"]["posMod"] + stats["melee"]["attackPower"]["negMod"];
	local tempMHSpeed;
	if not weaponStats.mainHand.speed then
		tempMHSpeed = 2.00;
	else
		tempMHSpeed = weaponStats.mainHand.speed;
	end
	local tempOHSpeed;
	if not weaponStats.offHand.speed then
		tempOHSpeed = 2.00;
	else
		tempOHSpeed = weaponStats.offHand.speed;
	end
	stats["melee"]["mainHandDmgMin"]["base"] = stats["melee"]["mainHandDmgMin"]["base"] + (tempAP / 14 * tempMHSpeed);
	stats["melee"]["mainHandDmgMax"]["base"] = stats["melee"]["mainHandDmgMax"]["base"] + (tempAP / 14 * tempMHSpeed);
	stats["melee"]["offHandDmgMin"]["base"] = stats["melee"]["offHandDmgMin"]["base"] + (tempAP / 14 * tempOHSpeed);
	stats["melee"]["offHandDmgMax"]["base"] = stats["melee"]["offHandDmgMax"]["base"] + (tempAP / 14 * tempOHSpeed);
	
	
	--Ranged attack power to damage
	--same formula as above
	if weaponStats["ranged"]["isWeapon"] and weaponStats["ranged"]["weaponType"][2] ~= "WAND" then
		local tempRAP = stats["ranged"]["attackPower"]["base"] + stats["ranged"]["attackPower"]["posMod"] + stats["ranged"]["attackPower"]["negMod"];
		local tempRangedSpeed;
		if not weaponStats.ranged.speed then
			tempRangedSpeed = 2.00;
		else
			tempRangedSpeed = weaponStats.ranged.speed;
		end
		stats["ranged"]["dmgMin"]["base"] = stats["ranged"]["dmgMin"]["base"] + (tempRAP / 14 * tempRangedSpeed);
		stats["ranged"]["dmgMax"]["base"] = stats["ranged"]["dmgMax"]["base"] + (tempRAP / 14 * tempRangedSpeed);
	end
	
	--Calculate attack speed after IAS
	local tempMeleeIAS = (1 + stats["melee"]["increasedAttackSpeed"]["base"]) * (1 + stats["melee"]["increasedAttackSpeed"]["posMod"]) / (1 + stats["melee"]["increasedAttackSpeed"]["negMod"]);
	local tempRangedIAS = (1 + stats["ranged"]["increasedAttackSpeed"]["base"]) * (1 + stats["ranged"]["increasedAttackSpeed"]["posMod"]) / (1 + stats["ranged"]["increasedAttackSpeed"]["negMod"]);
	stats["melee"]["mainHandSpeed"]["base"] = stats["melee"]["mainHandSpeed"]["base"] / tempMeleeIAS;
	stats["melee"]["offHandSpeed"]["base"] = stats["melee"]["offHandSpeed"]["base"] / tempMeleeIAS;
	stats["ranged"]["speed"]["base"] = stats["ranged"]["speed"]["base"] / tempRangedIAS;
	
	
	--Weapon damage multipliers
	
	local tempMhMax = stats["melee"]["mainHandDmgMax"];
	local tempMhMin = stats["melee"]["mainHandDmgMin"];
	local tempMhDM = stats["melee"]["mainHandDamageMultiplier"]["mult"];
	local tempOhMax = stats["melee"]["offHandDmgMax"];
	local tempOhMin = stats["melee"]["offHandDmgMin"];
	local tempOhDM = stats["melee"]["offHandDamageMultiplier"]["mult"];
	local tempRangedMax = stats["ranged"]["dmgMax"];
	local tempRangedMin = stats["ranged"]["dmgMin"];
	local tempRangedDM = stats["ranged"]["damageMultiplier"]["mult"];
	tempMhMax["base"] = tempMhMax["base"] * tempMhDM;
	tempMhMin["base"] = tempMhMin["base"] * tempMhDM;
	tempOhMax["base"] = tempOhMax["base"] * tempOhDM;
	tempOhMin["base"] = tempOhMin["base"] * tempOhDM;
	tempRangedMax["base"] = tempRangedMax["base"] * tempRangedDM;
	tempRangedMin["base"] = tempRangedMin["base"] * tempRangedDM;
	
	--Calculate weapon DPS
	local tempMhAvg = ((stats["melee"]["mainHandDmgMin"]["base"] + stats["melee"]["mainHandDmgMin"]["posMod"] + stats["melee"]["mainHandDmgMin"]["negMod"]) + (stats["melee"]["mainHandDmgMax"]["base"] + stats["melee"]["mainHandDmgMax"]["posMod"] + stats["melee"]["mainHandDmgMax"]["negMod"])) / 2;
	local tempOhAvg = ((stats["melee"]["offHandDmgMin"]["base"] + stats["melee"]["offHandDmgMin"]["posMod"] + stats["melee"]["offHandDmgMin"]["negMod"]) + (stats["melee"]["offHandDmgMax"]["base"] + stats["melee"]["offHandDmgMax"]["posMod"] + stats["melee"]["offHandDmgMax"]["negMod"])) / 2;
	local tempRangedAvg = ((stats["ranged"]["dmgMin"]["base"] + stats["ranged"]["dmgMin"]["posMod"] + stats["ranged"]["dmgMin"]["negMod"]) + (stats["ranged"]["dmgMax"]["base"] + stats["ranged"]["dmgMax"]["posMod"] + stats["ranged"]["dmgMax"]["negMod"])) / 2;
	if weaponStats["ranged"]["weaponType"][2] == "WAND" then
	--wands don't get damage bonuses...
		tempRangedAvg = (stats["ranged"]["dmgMin"]["base"] + stats["ranged"]["dmgMax"]["base"]) / 2;
	end
	stats["melee"]["mainHandDps"]["base"] = tempMhAvg / stats["melee"]["mainHandSpeed"]["base"];
	stats["melee"]["offHandDps"]["base"] = tempOhAvg / stats["melee"]["offHandSpeed"]["base"];
	stats["ranged"]["dps"]["base"] = tempRangedAvg / stats["ranged"]["speed"]["base"];

	--If they can't block or parry, set their block or parry chance to 0
	if not canBlock then
		stats["defense"]["blockPercent"]["base"] = 0;
		stats["defense"]["blockPercent"]["posMod"] = 0;
		stats["defense"]["blockPercent"]["negMod"] = 0;
	end
	if not canParry then
		stats["defense"]["parryPercent"]["base"] = 0;
		stats["defense"]["parryPercent"]["posMod"] = 0;
		stats["defense"]["parryPercent"]["negMod"] = 0;
	end
	
	return level, stats, weaponStats, itemStats;
end


function ScrubBuster:GetTalents(inspect, class, auras)
--inspect is bool, false to check player's talents, true to check inspect's talents
--stats and weaponStats are the stats tables from GetStats
--special is the special effects table from GetStats, things like warrior stances and druid forms
--returns the applicable talent auras of the character
	
	--local auras = { [1] = {}, [2] = {}, [3] = {}, [4] = {} };

	local numTabs = GetNumTalentTabs(inspect);
	local talentBonuses = ScrubBuster.TalentBonuses[class];
	
	for tab = 1, numTabs do
		local numTalents = GetNumTalents(tab, inspect);
		--local tabName = GetTalentTabInfo(tab, inspect);
		for tal = 1, numTalents do
			local talentName, _, _, _, rank = GetTalentInfo(tab, tal, inspect);
			if rank > 0 then
				if talentBonuses[talentName] then
					--local talentEffect = talentBonuses[talentName]["func"](rank, stats, weaponStats, itemStats);
					local prio = talentBonuses[talentName]["prio"];
					local temptable = {
						["isTalent"] = true;
						["talentRank"] = rank;
						["func"] = talentBonuses[talentName]["func"];
					};
					table.insert(auras[prio], temptable);
					
					--some talents have two effects of different priorities, so we need this
					--ugly thing to account for those. There should be no talents with three
					--different priorities (thank goodness) so this will suffice
					local prio2 = talentBonuses[talentName]["prio2"];
					if prio2 then
						local temptable = {
							["isTalent"] = true;
							["talentRank"] = rank;
							["func"] = talentBonuses[talentName]["func2"];
						};
						table.insert(auras[prio2], temptable);
					end
				end
			end
		end
	end
	
	return auras;
end


function ScrubBuster:CheckLineForDamage(line, dmgtable)
--checks the line (from a tooltip) for damage values, and adds them to the damage table
--returns damagetable with any found damage added to it
	local dmg, dmgmin, dmgmax, school;
	
	--check regular physical damage (eg. 50 - 80 Damage)
	_, _, dmgmin, dmgmax = string.find(line, sbDamageTemplate);
	if dmgmin and dmgmax then
		dmgmin, dmgmax = tonumber(dmgmin), tonumber(dmgmax);
		dmgtable["MIN"]["PHYSICAL"] = dmgtable["MIN"]["PHYSICAL"] + dmgmin;
		dmgtable["MAX"]["PHYSICAL"] = dmgtable["MAX"]["PHYSICAL"] + dmgmax;
	end
	dmgmin, dmgmax = nil, nil; --reset the vars so they won't fuk up the rest of the func
	
	--check for regular elemental damages (eg. 50 - 80 Fire Damage)
	_, _, dmgmin, dmgmax, school = string.find(line, sbElementalDamageTemplate);
	if dmgmin and dmgmax and school and (dmgtable["MIN"][string.upper(school)] ~= nil) then
		dmgmin, dmgmax = tonumber(dmgmin), tonumber(dmgmax);
		school = sbDamageTypes[school];
		dmgtable["MIN"][school] = dmgtable["MIN"][school] + dmgmin;
		dmgtable["MAX"][school] = dmgtable["MAX"][school] + dmgmax;
	end
	dmgmin, dmgmax, school = nil, nil, nil;
	
	--check for any extra physical damage
	_,_, dmg = string.find(line, sbExtraSingleDamageTemplate);
	if dmg then
		dmg = tonumber(dmg);
		dmgtable["MIN"]["PHYSICAL"] = dmgtable["MIN"]["PHYSICAL"] + dmg; --I think this is how this works
		dmgtable["MAX"]["PHYSICAL"] = dmgtable["MAX"]["PHYSICAL"] + dmg;
	end
	dmg = nil;
	
	--check for any extra elemental damage (dunno what this would catch but can't hurt to catch it)
	--oops, this actually catches "+x Spell Damage" things... hackfixed
	_, _, dmg, school = string.find(line, sbExtraSingleElementalDamageTemplate);
	if dmg and school and (dmgtable["MIN"][string.upper(school)] ~= nil) then
		dmg = tonumber(dmg);
		school = sbDamageTypes[school];
		dmgtable["MIN"][school] = dmgtable["MIN"][school] + dmg;
		dmgtable["MAX"][school] = dmgtable["MAX"][school] + dmg;
	end
	dmg, school = nil, nil;
	
	return dmgtable;
end

function ScrubBuster:ScanWeapTooltip(itemlink)
--Scans the tooltip of the itemlink for weapon stats/buffs, ie. damage, speed, dps, crit rating (for that wep)
--Returns table of damage values, speed, dps as it appears in tooltip, (crit rating??? not right now), weapontype
	ScrubBusterTooltip:ClearLines();
	ScrubBusterTooltip:SetHyperlink(itemlink)
	local leftText, rightText, leftLine, rightLine;
	local numlines = ScrubBusterTooltip:NumLines();
	local tempweaponclass, tempweaponhand;
	local speed; --speed will be nil if it's not found, but that's how we want it
	local dps = 0; --default dps is 0 in case it's not found on the item
	local weapontype = { };
	local isweapon = false;
	local damagetable = {
		MIN = {
			PHYSICAL = 0,
			ARCANE = 0,
			FIRE = 0,
			NATURE = 0,
			FROST = 0,
			SHADOW = 0,
			HOLY = 0
		},
		MAX = {
			PHYSICAL = 0,
			ARCANE = 0,
			FIRE = 0,
			NATURE = 0,
			FROST = 0,
			SHADOW = 0,
			HOLY = 0
		},
	};
	
	for i = 2, numlines, 1 do --read the lines one by one and get the info we want if it's there
		leftText = getglobal("ScrubBusterTooltipTextLeft"..i);
		rightText = getglobal("ScrubBusterTooltipTextRight"..i);
		leftLine = leftText:GetText();
		rightLine = rightText:GetText();
		
		-------------------
		--CHECK LEFT LINE--
		-------------------
		if leftLine then --if lefttext exists, we read it
			--from the left we want weapon "handedness", damage, and dps.
			--We may also want +crit from sharpening stones, but I'm not sure yet. Needs testing.
			
			--check weapon handedness, only if we don't know it already
			if not tempweaponhand then
				if leftLine == getglobal("INVTYPE_HOLDABLE") then
					tempweaponhand = "OFFHAND";
					tempweaponclass = "OFFHANDITEM";
				elseif sbWeaponHand[leftLine] then tempweaponhand = sbWeaponHand[leftLine]
				end
			end
			
			--check weapon DPS if we don't know it yet
			if not dps then
				_, _, _, dps = string.find(leftLine, sbDPSTemplate);
				if not dps then --check the second template
					_, _, _, dps = string.find(leftLine, sbDPSTemplate2);
				end
			end
			
			--check if the line has any damage values and if yes add them to our table
			damagetable = ScrubBuster:CheckLineForDamage(leftLine, damagetable);
			
			
		end
		
		--------------------
		--CHECK RIGHT LINE--
		--------------------
		if rightLine then
			--on the right all we care about is weapon class and weapon speed
			
			--check weapon class (eg. axe, sword) if we don't know it yet
			if not tempweaponclass then
				if sbWeaponClasses[rightLine] then
					tempweaponclass = sbWeaponClasses[rightLine]
					local notweapons = {
						["SHIELD"] = true,
						["IDOL"] = true,
						["LIBRAM"] = true,
						["TOTEM"] = true,
					};
					if not notweapons[tempweaponclass] then
						isweapon = true;
					end
				end
			end
			
			--check weapon speed if we don't know it yet
			if not speed then
				_, _, speed = string.find(rightLine, sbSpeedTemplate);
				if not speed then --if that didn't work, try the other template
					_, _, speed = string.find(rightLine, sbSpeedTemplate2);
				end
				if speed then speed = string.gsub(speed, ",", ".") end				
			end			
			
		end		
	end
	dps = tonumber(dps); --DPS is still a string, and we want a number
	speed = tonumber(speed); --same story here.
	
	if not tempweaponclass then tempweaponclass = "UNKNOWN" end
	weapontype = { [1] = tempweaponhand, [2] = tempweaponclass };
	
	return damagetable, speed, dps, weapontype, isweapon
end

function ScrubBuster:CombineDamageTable(dmgtable)
--Combines the different damages in the damagetable from weapon tooltip scanning into totals,
--as they would appear in the character sheet under "Damage". Returns dmgmin and dmgmax

	local dmgmin, dmgmax = 0, 0;
	for k,v in pairs(dmgtable["MIN"]) do
		dmgmin = dmgmin + v;
	end
	for k,v in pairs(dmgtable["MAX"]) do
		dmgmax = dmgmax + v;
	end
	return dmgmin, dmgmax
end

function ScrubBuster:ScanAmmoTooltip(itemlink)
--scans the tooltip of the itemlink (which should be ammo, dummy) for how much damage the ammo does
--returns the DPS increase, and the type of the ammo (bullet/arrow)
	ScrubBusterTooltip:ClearLines();
	ScrubBusterTooltip:SetHyperlink(itemlink)
	local leftText, rightText, leftLine, rightLine;
	local numlines = ScrubBusterTooltip:NumLines();
	local tempdps, tempschool;
	local ammotype;
	local dpstable = {
		PHYSICAL = 0,
		ARCANE = 0,
		FIRE = 0,
		NATURE = 0,
		FROST = 0,
		SHADOW = 0,
		HOLY = 0
	};
	
	for i = 2, numlines, 1 do
		leftText = getglobal("ScrubBusterTooltipTextLeft"..i);
		rightText = getglobal("ScrubBusterTooltipTextRight"..i);
		leftLine = leftText:GetText();
		rightLine = rightText:GetText();
		
		if leftLine then
			--if leftline exists, check if it has stuff we need, ie. the DPS value of the ammo
			_, _, dps = string.find(leftLine, sbAmmoDamageTemplate);
			if dps then
				dps = tonumber(dps);
				dpstable["PHYSICAL"] = dpstable["PHYSICAL"] + dps;
			end
			dps = nil;
			
			_, _, dps, school = string.find(leftLine, sbAmmoElementalDamageTemplate);
			if dps and school then
				dps = tonumber(dps);
				school = sbDamageTypes[school];
				dpstable[school] = dpstable[school] + dps;
			end
		end
		
		if rightLine then
			--if rightline exists, check it for stuff we need, ie. the type of the ammo
			if rightLine == "Arrow" then --this is a kinda shitty check that depends on localization
				ammotype = "ARROW"; --however, there's no global that would help us here
			elseif rightLine == "Bullet" then --just like is the case with weapon types
				ammotype = "BULLET";
			end
		end
	end
	return dpstable, ammotype;
end

function ScrubBuster:GetRacials(race, class, stats, weaponStats, auras)
--Adds the player's racials to their auras. Takes in the respective stats from GetStats.
--returns the auras table with racials added to it.
	if race == "Human" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = {					
					["melee"] = {
						["mainHandExpertise"] = { ["base"] = 0 },
						["offHandExpertise"] = { ["base"] = 0}
					}
				};
				if weaponStats.mainHand.hasItem and (weaponStats.mainHand.weaponType[2] == 'SWORD' or weaponStats.mainHand.weaponType[2] == 'MACE') then
					aura["melee"]["mainHandExpertise"]["base"] = 5;
				end
				if weaponStats.offHand.hasItem and (weaponStats.offHand.weaponType[2] == 'SWORD' or weaponStats.offHand.weaponType[2] == 'MACE') then
					aura["melee"]["offHandExpertise"]["base"] = 5;
				end
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["primary"] = { ["spi"] = { ["mult"] = 1.1 } } };
				return aura;
			end
		};
		table.insert(auras[2], effect1);
		table.insert(auras[1], effect2);

		
	elseif race == "Orc" then
		local effect = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = {					
					["melee"] = {
						["mainHandExpertise"] = { ["base"] = 0 },
						["offHandExpertise"] = { ["base"] = 0}
					}
				};
				if weaponStats.mainHand.hasItem and weaponStats.mainHand.weaponType[2] == 'AXE' then
					aura["melee"]["mainHandExpertise"]["base"] = 5;
				end
				if weaponStats.offHand.hasItem and weaponStats.offHand.weaponType[2] == 'AXE' then
					aura["melee"]["offHandExpertise"]["base"] = 5;
				end
				return aura;
			end
		};
		table.insert(auras[2], effect);
		
		
	elseif race == "Dwarf" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = {
					["ranged"] = { ["critPercent"] = { ["base"] = 0 } }
				};
				if weaponStats.ranged.hasItem and weaponStats.ranged.weaponType[2] == 'GUN' then
					aura["ranged"]["critPercent"]["base"] = 1;
				end
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["frost"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		table.insert(auras[2], effect1);
		table.insert(auras[1], effect2);
		
	elseif race == "NightElf" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["defense"] = { ["dodgePercent"] = { ["base"] = 1 } } };
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["nature"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		table.insert(auras[2], effect1);
		table.insert(auras[1], effect2);

		
	elseif race == "Scourge" then
		local effect = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["shadow"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		table.insert(auras[1], effect);
		
	elseif race == "Tauren" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["nature"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resource"] = { ["health"] = { ["mult"] = 1.05 } } };
				return aura;
			end
		};
		table.insert(auras[1], effect1);
		table.insert(auras[2], effect2);
		
	elseif race == "Gnome" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["primary"] = { ["int"] = { ["mult"] = 1.05 } } };
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["arcane"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		table.insert(auras[1], effect1);
		table.insert(auras[1], effect2);
		
	elseif race == "Troll" then
		--turns out the health regen racial is actually *rate*, not magnitude.
		local effect = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["ranged"] = { ["critPercent"] = { ["base"] = 0 } } };
				if weaponStats.ranged.hasItem and (weaponStats.ranged.weaponType[2] == 'BOW' or weaponStats.ranged.weaponType[2] == 'THROWN') then
					aura["ranged"]["critPercent"]["base"] = 1;
				end
				return aura;
			end
		};
		table.insert(auras[2], effect);
		
		
	elseif race == "BloodElf" then
		local effect = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
					local aura = {
						["resist"] = {
							["arcane"] = { ["posMod"] = 5 },
							["fire"] = { ["posMod"] = 5 },
							["nature"] = { ["posMod"] = 5},
							["frost"] = { ["posMod"] = 5},
							["shadow"] = { ["posMod"] = 5}
						}
					};
					return aura;
			end
		};
		table.insert(auras[1], effect);

		
	elseif race == "Draenei" then
		local effect1 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = { ["resist"] = { ["shadow"] = { ["posMod"] = 10 } } };
				return aura;
			end
		};
		local effect2 = {
			["isRacial"] = true;
			["func"] = function(weaponStats, class)
				local aura = {
					["physical"] = { ["hitPercent"] = { ["base"] = 0 } },
					["spell"] = { ["hitPercent"] = { ["base"] = 0 } },
				};
				if class == "WARRIOR" or class == "PALADIN" or class == "HUNTER" then
					aura["physical"]["hitPercent"]["base"] = 1;
				elseif class == "PRIEST" or class == "MAGE" or class == "SHAMAN" then
					aura["spell"]["hitPercent"]["base"] = 1;
				end
				return aura;
			end
		};
		table.insert(auras[1], effect1);
		table.insert(auras[2], effect2);
	end
	
	return auras;
end
