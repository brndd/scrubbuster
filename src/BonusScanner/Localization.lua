-- bonus names
BONUSSCANNER_NAMES = {
--Base Stats
	STR 		= "Strength",
	AGI 		= "Agility",
	STA 		= "Stamina",
	INT 		= "Intellect",
	SPI 		= "Spirit",
	ARMOR 	= "Armor",

--Resistances
	ARCANERES = "Arcane Resistance",	
	FIRERES 	= "Fire Resistance",
	NATURERES = "Nature Resistance",
	FROSTRES 	= "Frost Resistance",
	SHADOWRES = "Shadow Resistance",

--Skills
	FISHING 	= "Fishing",
	MINING 		= "Mining",
	HERBALISM = "Herbalism",
	SKINNING 	= "Skinning",
	DEFENSE 	= "Defense Rating",
	EXPERTISE = "Expertise Rating",
	
--Abilities
	BLOCK		= "Block Rating",
	BLOCKVALUE	= "Block Value",
	DODGE 		= "Dodge Rating",
	PARRY 		= "Parry Rating",
	RESILIENCE = "Resilience Rating", 
	DMGWPN = "Increased Melee Damage", -- Might of Cenarius etc.
	RANGEDDMG = "Ranged Weapon Damage",
	ARMORPEN = "Armor Penetration",

--Attack Power
	ATTACKPOWER	= "Attack Power",
	ATTACKPOWERUNDEAD	= "Attack Power against Undead",
-- ATTACKPOWERBEAST	= "Attack Power against Beasts", --Added by jmlsteele, commented out until further notice since it is of minor significance
	ATTACKPOWERFERAL	= "Attack Power in feral form",
	RANGEDATTACKPOWER = "Ranged Attack Power",
	
--Critical
	CRIT 		= "Crit. Rating",
	SPELLCRIT 	= "Spell Crit. Rating",
	RANGEDCRIT 	= "Crit. Shots",
	HOLYCRIT 	= "Crit. Holy Spell",

--Hit
	TOHIT 		= "Hit Rating",
	RANGEDHIT	= "Ranged Hit Rating",
	SPELLTOHIT 	= "Spell Hit Rating",
  
--Haste
	HASTE = "Melee Haste Rating",
	SPELLH = "Spell Haste Rating",

--Spell Damage/healing
	DMG 		= "Spell Damage",
	DMGUNDEAD	= "Spell Damage against Undead",
	ARCANEDMG 	= "Arcane Damage",
	FIREDMG 	= "Fire Damage",
	FROSTDMG 	= "Frost Damage",
	HOLYDMG 	= "Holy Damage",
	NATUREDMG 	= "Nature Damage",
	SHADOWDMG 	= "Shadow Damage",
	SPELLPEN 	= "Spell Penetration",
	HEAL 		= "Healing",

--Regen
	HEALTHREG 	= "Life Regeneration",
	MANAREG 	= "Mana Regeneration",

--Health/mana
	HEALTH = "Life Points",
	MANA = "Mana Points",
	
--Extra bonuses
  THREATREDUCTION = "% Reduced Threat",
  THREATINCREASE = "% Increased Threat",
  INCRCRITDMG = "% Increased Critical Damage",
  SPELLREFLECT = "% Spell Reflect",
  SNARERESIST = "% Snare and Root Resistance",
  STUNRESIST = "% Stun Resistance",
  PERCINT = "% Intellect",
  PERCBLOCKVALUE = "% Shield Block Value"
};

-- equip and set bonus prefixes:
--BONUSSCANNER_PREFIX_EQUIP = "Equip: "; --no longer used but kept in case Blizzard decides to alter its own global string referring to this
BONUSSCANNER_PREFIX_SET = "Set: ";
BONUSSCANNER_PREFIX_SOCKET = "Socket Bonus: ";
BONUSSCANNER_WEAPON_SPEED = "Speed";
BONUSSCANNER_HEALING_LINE = "Healing";
BONUSSCANNER_SPELLD_LINE = "Spell Damage";
BONUSSCANNER_SPELLD_LINE2 = "Damage Spells";

-- Enchant separators
BONUSSCANNER_GLOBAL_SEP = " +";
BONUSSCANNER_SEPARATORS = { "/", ", ", " & ", " and " };

BONUSSCANNER_PATTERNS_BLACKLIST = { --(xarthasskrillexx): we have to blacklist metagem effects to avoid getting their stats twice
	"%+26 Healing %+9 Spell Damage and 2%% Reduced Threat", --Bracing Earthstorm Diamond
	"%+3 Melee Damage %& Chance to Stun Target", --Brutal Earthstorm Diamond
	"%+14 Spell Crit Rating and 1%% Spell Reflect", --Destructive Skyfire Diamond
	"%+12 Critical Strike Rating %& 5%% Snare and Root Resist", --Enigmatic Skyfire Diamond
	"%+12 Intellect %& Chance to restore mana on spellcast", --Insightful Earthstorm Diamond
	"Chance to Increase Spell Cast Speed", --Mystical Skyfire Diamond
	"%+18 Stamina %& 5%% Stun Resist", --Powerful Earthstorm Diamond
	"%+24 Attack Power and Minor Run Speed Increase", --Swift Skyfire Diamond
	"%+12 Defense Rating %& Chance to Restore Health on hit", --Tenacious Earthstorm Diamond
	"%+12 Spell Damage and Minor Run Speed Increase", --Swift Starfire Diamond
	"%+20 Attack Power and Minor Run Speed Increase", --Swift Windfire Diamond
	"Chance to Increase Melee&/Ranged Attack Speed", --Thundering Skyfire Diamond
	"%+24 Attack Power and 5%% Stun Resistance", --Potent Unstable Diamond
	"%+14 Spell Damage %& 5&& Stun Resistance", --Imbued Unstable Diamond
	"%+12 Spell Critical %& 3%% Increased Critical Damage", --Chaotic Skyfire Diamond
	"%+14 Spell Damage %& %+2%% Intellect", --Ember Skyfire Diamond
	"%+12 Defense Rating %& %+10%% Shield Block Value" --Eternal Earthstorm Diamond
};

-- passive bonus patterns. checked against lines which start with above prefixes
BONUSSCANNER_PATTERNS_PASSIVE = {
--Skills
	{ pattern = "Increases defense rating by (%d+)%.", effect = "DEFENSE" }, --jmlsteele
  { pattern = "Improves your resilience rating by (%d+)%.", effect = "RESILIENCE" }, 
  { pattern = "Increases your expertise rating by (%d+)%.", effect = "EXPERTISE" },
  { pattern = "Increased Fishing %+(%d+)%.", effect = "FISHING" },

-- Abilities
	{ pattern = "Increases your block rating by (%d+)%.", effect = "BLOCK" },
	{ pattern = "Increases your shield block rating by (%d+)%.", effect = "BLOCK" },
	{ pattern = "Increases the block value of your shield by (%d+)%.", effect = "BLOCKVALUE" },
	{ pattern = "Increases your dodge rating by (%d+)%.", effect = "DODGE" },
	{ pattern = "Increases your parry rating by (%d+)%.", effect = "PARRY" },
	{ pattern = "%+(%d+) Weapon Damage%.", effect = "DMGWPN" },

--Crit
	{ pattern = "Increases your critical strike rating by (%d+)%.", effect = "CRIT" },
	{ pattern = "Improves critical strike rating by (%d+)%.", effect = "CRIT" }, 
	{ pattern = "Improves melee critical strike rating by (%d+)%.", effect = "CRIT" },
	{ pattern = "Increases your spell critical strike rating by (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Increases spell critical strike rating by (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Improves spell critical strike rating by (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Increases your ranged critical strike rating by (%d+)%.", effect = "RANGEDCRIT" },
	

--Damage/Heal
	{ pattern = "Increases damage done by Arcane spells and effects by up to (%d+)%.", effect = "ARCANEDMG" },
	{ pattern = "Increases damage done by Fire spells and effects by up to (%d+)%.", effect = "FIREDMG" },
	{ pattern = "Increases damage done by Frost spells and effects by up to (%d+)%.", effect = "FROSTDMG" },
	{ pattern = "Increases damage done by Holy spells and effects by up to (%d+)%.", effect = "HOLYDMG" },
	{ pattern = "Increases damage done by Nature spells and effects by up to (%d+)%.", effect = "NATUREDMG" },
	{ pattern = "Increases damage done by Shadow spells and effects by up to (%d+)%.", effect = "SHADOWDMG" },
	{ pattern = "Increases healing done by spells and effects by up to (%d+)%.", effect = "HEAL" },
	{ pattern = "Increases damage and healing done by magical spells and effects by up to (%d+)%.", effect = {"HEAL", "DMG"} },
	{ pattern = "Increases damage and healing done by magical spells and effects slightly%.", effect = {"HEAL", "DMG"}, value = {6, 6} },
	{ pattern = "Increases damage done to Undead by magical spells and effects by up to (%d+)", effect = "DMGUNDEAD" },
	
	-- Multibonus Equip patterns
	{ pattern = "Increases healing done by up to (%d+) and damage done by up to (%d+) for all magical spells and effects%.", effect = {"HEAL","DMG"} },
	{ pattern = "Increases your pet's resistances by 130 and increases your spell damage by up to (%d+)%.", effect = "DMG" }, -- Void Star Talisman
	{ pattern = "Increases your spell damage by up to (%d+) and your healing by up to (%d+)%.", effect = {"DMG","HEAL"} },
	{ pattern = "Increases healing done by magical spells and effects of all party members within %d+ yards by up to (%d+)%. ", effect = "HEAL" },
	{ pattern = "Increases damage and healing done by magical spells and effects of all party members within %d+ yards by up to (%d+)%.", effect = {"HEAL", "DMG"} },
	{ pattern = "Restores (%d+) mana per 5 seconds to all party members within %d+ yards%.", effect = "MANAREG" },
	{ pattern = "Increases the spell critical strike rating of all party members within %d+ yards by (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Increases defense rating by (%d+), Shadow resistance by (%d+) and your normal health regeneration by (%d+)%.", effect = {"DEFENSE", "SHADOWRES", "HEALTHREG"} },
	
	
--Attack power
	{ pattern = "Increases attack power by (%d+)%.", effect = "ATTACKPOWER" },
	{ pattern = "Increases melee and ranged attack power by (%d+)%.", effect = {"ATTACKPOWER","RANGEDATTACKPOWER"} }, -- Andonisus, Reaper of Souls pattern
	{ pattern = "+(%d+) ranged Attack Power%.", effect = "RANGEDATTACKPOWER" },
	{ pattern = "Increases ranged attack power by (%d+)%.", effect = "RANGEDATTACKPOWER" },
  { pattern = "Increases attack power by (%d+) in Cat, Bear, Dire Bear, and Moonkin forms only%.", effect = "ATTACKPOWERFERAL" },
  { pattern = "Increases attack power by (%d+) when fighting Undead%.", effect = "ATTACKPOWERUNDEAD" },
  { pattern = "+(%d+) Attack Power when fighting Undead%.", effect = "ATTACKPOWERUNDEAD" },
  
--Regen
	{ pattern = "Restores (%d+) health per 5 sec%.", effect = "HEALTHREG" }, 
	{ pattern = "Restores (%d+) health every 5 sec%.", effect = "HEALTHREG" },  -- both versions ('per' and 'every') seem to be used
	{ pattern = "Restores (%d+) mana per 5 sec%.", effect = "MANAREG" },
	{ pattern = "Restores (%d+) mana every 5 sec%.", effect = "MANAREG" },
	
--Hit
	{ pattern = "Increases your hit rating by (%d+)%.", effect = "TOHIT" },
	{ pattern = "Improves hit rating by (%d+)%.", effect = "TOHIT" }, 
	{ pattern = "Increases your spell hit rating by (%d+)%.", effect = "SPELLTOHIT" },
	{ pattern = "Improves spell hit rating by (%d+)%.", effect = "SPELLTOHIT" },
	
--Haste
	{ pattern = "Improves haste rating by (%d+)%.", effect = "HASTE" },
	{ pattern = "Improves spell haste rating by (%d+)%.", effect = "SPELLH" },
		
--Penetration
	{ pattern = "Decreases the magical resistances of your spell targets by (%d+).", effect = "SPELLPEN" },
	{ pattern = "Increases your spell penetration by (%d+)%.", effect = "SPELLPEN" },
	{ pattern = "Your attacks ignore (%d+) of your opponent's armor%.", effect = "ARMORPEN" }
	
};

-- generic patterns have the form "+xx bonus" or "bonus +xx" or even "xx bonus" with an optional % sign after the value.

-- first the generic bonus string is looked up in the following table
BONUSSCANNER_PATTERNS_GENERIC_LOOKUP = {
	["All Stats"] 			= {"STR", "AGI", "STA", "INT", "SPI"},
	["Strength"]			= "STR",
	["Agility"]			= "AGI",
	["Stamina"]			= "STA",
	["Intellect"]			= "INT",
	["Spirit"] 			= "SPI",

	["All Resistances"] 	= { "ARCANERES", "FIRERES", "FROSTRES", "NATURERES", "SHADOWRES"},
	["Resist All"] 	= { "ARCANERES", "FIRERES", "FROSTRES", "NATURERES", "SHADOWRES"},

	["Fishing"]		= "FISHING",
	["Fishing Lure"]	= "FISHING",
	["Increased Fishing"]	= "FISHING",
	["Mining"]		= "MINING",
	["Herbalism"]		= "HERBALISM",
	["Skinning"]		= "SKINNING",
	["Defense"]		= "DEFENSE",
	["Increased Defense"]	= "DEFENSE",

	["Attack Power"] 	= "ATTACKPOWER",
  ["Attack Power when fighting Undead"] 		= "ATTACKPOWERUNDEAD",
	["Attack Power in Cat, Bear, Dire Bear, and Moonkin forms only"] = "ATTACKPOWERFERAL",
	["Weapon Damage"] = "DMGWPN",
	
	-- TBC Patterns Generic/Gems/Sockets
	
	["Spell Crit Rating"] = "SPELLCRIT", 
	["Spell Critical Rating"] = "SPELLCRIT",
	["Spell Critical Strike Rating"] = "SPELLCRIT",
	["Spell Critical"] = "SPELLCRIT",
	["Spell Hit Rating"]= "SPELLTOHIT",
	["Spell Power"] = {"HEAL", "DMG"},
	["Critical Strike Rating"] = "CRIT",
	["Critical Rating"] = "CRIT",
	["Crit Rating"] = "CRIT",
	["Spell Penetration"] = "SPELLPEN",
	["Defense Rating"] = "DEFENSE",
	["Haste Rating"] = "HASTE",
	["Spell Haste Rating"] = "SPELLH",
	["Mana per 5 Seconds"] = "MANAREG",
	["Mana every 5 Sec"] = "MANAREG",
	["Mana every 5 seconds"] = "MANAREG",
	["Mana restored per 5 seconds"] = "MANAREG",
	["Mana Per 5 sec"] = "MANAREG",
	["mana per 5 sec"] = "MANAREG",
	["Mana per 5 Sec"] = "MANAREG",
	["Mana per 5 sec"] = "MANAREG",
	["Dodge Rating"] 		= "DODGE",
	["Parry Rating"] 		= "PARRY",
	["Resilience Rating"] = "RESILIENCE",
	["Melee Damage"] = "DMGWPN",
	["Damage Spells"] = "DMG",
	["Expertise Rating"] = "EXPERTISE",
	
	-- End TBC Patterns
 
	["Dodge"] 		= "DODGE",
	["Block"]		= "BLOCKVALUE",
	["Block Value"]		= "BLOCKVALUE",
	["Block Rating"]		= "BLOCK",
	["Blocking"]		= "BLOCK",
	["Hit"] 		= "TOHIT",
	["Hit Rating"] = "TOHIT",	
	["Spell Hit"]		= "SPELLTOHIT",
	["Ranged Attack Power"]	= "RANGEDATTACKPOWER",
	["ranged Attack Power"]	= "RANGEDATTACKPOWER", -- Experimental for TBC
	["Health per 5 sec"]	= "HEALTHREG",
	["health every 5 sec"]	= "HEALTHREG",
	["Healing"] = "HEAL",
	["Healing Spells"] 	= "HEAL",
	["Increased Healing"] 	= "HEAL",
	["mana every 5 sec"] 	= "MANAREG",
	["Mana Regen"]		= "MANAREG",
	--multivalue
	["Spell Damage"]	= {"HEAL", "DMG"},
	["Damage"]		= {"DMG", "HEAL"},
	--/multivalue
	["Critical"]		= "CRIT",
	["Critical Hit"]	= "CRIT",
	["Health"]		= "HEALTH",
	["HP"]			= "HEALTH",
	["Mana"]		= "MANA",
	["Armor"]		= "ARMOR",
	["Reinforced"]	= "ARMOR",
	["Resilience"]			= "RESILIENCE"
};	

-- next we try to match against one pattern of stage 1 and one pattern of stage 2 and concatenate the effect strings
BONUSSCANNER_PATTERNS_GENERIC_STAGE1 = {
	{ pattern = "Arcane", 	effect = "ARCANE" },	
	{ pattern = "Fire", 	effect = "FIRE" },	
	{ pattern = "Frost", 	effect = "FROST" },	
	{ pattern = "Holy", 	effect = "HOLY" },	
	{ pattern = "Shadow",	effect = "SHADOW" },	
	{ pattern = "Nature", 	effect = "NATURE" }
}; 	

BONUSSCANNER_PATTERNS_GENERIC_STAGE2 = {
	{ pattern = "Resist", 	effect = "RES" },	
	{ pattern = "Damage", 	effect = "DMG" },
	{ pattern = "Effects", 	effect = "DMG" }
}; 	

-- finally if we got no match, we match against some special enchantment patterns.
BONUSSCANNER_PATTERNS_OTHER = {
-- Infused Amethyst
	{ pattern = "Spell Damage %+(%d+) and Stamina %+(%d+)", effect = {"DMG", "HEAL", "STA"} },
-- mage/warlock ZG patterns
-- Aldor/Scryer enchants that cannot be handled any other way
	{ pattern = "%+18 Healing and Spell Damage/%+8 Spell Hit", effect = {"DMG", "HEAL", "SPELLTOHIT" }, value = {18, 18, 8} },
	{ pattern = "%+18 Healing and Spell Damage/%+10 Stamina", effect = {"DMG", "HEAL", "STA" }, value = {18, 18, 10} },
	{ pattern = "%+15 Spell Critical Strike Rating and %+12 Spell Damage and Healing", effect = {"SPELLCRIT", "HEAL", "DMG" }, value = {15, 12, 12} },
-- special patterns that cannot be handled any other way	
	{ pattern = "%+(%d+) Healing and Spell Damage", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Damage and Healing Spells", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Spell Damage and Healing", effect = {"DMG", "HEAL"} },
-- special metagem patterns
  { pattern = "+12 Agility & 3%% Increased Critical Damage", effect = {"AGI","INCRCRITDMG"}, value = {12, 3} },
  { pattern = "%+26 Healing %+9 Spell Damage and 2%% Reduced Threat", effect = {"HEAL", "DMG", "THREATREDUCTION"}, value = {26, 9, 2} },
  { pattern = "+12 Spell Critical & 3%% Increased Critical Damage", effect = {"SPELLCRIT", "INCRCRITDMG"}, value = {12, 3} },
  { pattern = "+14 Spell Crit Rating and 1%% Spell Reflect", effect = {"SPELLCRIT", "SPELLREFLECT"}, value = {14, 1} },
  { pattern = "+12 Critical Strike Rating & 5%% Snare and Root Resist", effect = {"CRIT", "SNARERESIST"}, value = {12, 5} },
  { pattern = "+14 Spell Damage & 5%% Stun Resistance", effect = {"DMG", "STUNRESIST"}, value = {14, 5} },
  { pattern = "+24 Attack Power and 5%% Stun Resistance", effect = {"ATTACKPOWER", "STUNRESIST"}, value = {24, 5} },
  { pattern = "+18 Stamina & 5%% Stun Resist", effect = {"STA", "STUNRESIST"}, value = {18, 5} },
  { pattern = "%+14 Spell Damage & %+2%% Intellect", effect = {"DMG", "PERCINT"}, value = {14, 2} },
  { pattern = "%+12 Defense Rating & %+10%% Shield Block Value", effect = {"DEFENSE", "PERCBLOCKVALUE"}, value = {12, 10} },
  
-- rest of custom patterns
	{ pattern = "Mana Regen (%d+) per 5 sec", effect = "MANAREG" },
	{ pattern = "Reinforced %(%+(%d+) Armor%)", effect = "ARMOR" },
	{ pattern = "%+(%d+)%% Threat", effect = "THREATINCREASE" },
	{ pattern = "Scope %(%+(%d+) Critical Strike Rating%)", effect = "CRIT" },
	{ pattern = "Scope %(%+(%d+) Damage%)", effect = "RANGEDDMG" },
	{ pattern = "Subtlety", effect = "THREATREDUCTION", value = 2 },
	
	{ pattern = "Vitality", effect = { "MANAREG", "HEALTHREG"}, value = {4, 4} },
	{ pattern = "Soulfrost", effect = {"FROSTDMG", "SHADOWDMG"}, value = {54, 54} },
	{ pattern = "Sunfire", effect = {"ARCANEDMG", "FIREDMG"}, value = {50, 50} },
	{ pattern = "Savagery", effect = "ATTACKPOWER", value = 70 },
	{ pattern = "Surefooted", effect = {"TOHIT", "SNARERESIST"}, value = {10, 5} }
};

-- localized strings
BONUSSCANNER_BONUSSUM_LABEL = "Item Bonus Summary";
BONUSSCANNER_TOOLTIP_STRING = "BonusScanner Tooltip Bonus Summary ";
BONUSSCANNER_TOOLTIPGEMS_STRING = "Gem color count ";
BONUSSCANNER_HIDDENSD_STRING = "Hidden Spell Damage detection ";
BONUSSCANNER_BASICLINKID_STRING = "Basic Itemlink ID's ";
BONUSSCANNER_EXTENDEDLINKID_STRING = "Extended Itemlink ID's ";
BONUSSCANNER_TOOLTIP_ENABLED = "Enabled";
BONUSSCANNER_TOOLTIP_DISABLED = "Disabled";
BONUSSCANNER_IBONUS_LABEL = "Item bonuses of ";
BONUSSCANNER_NOBONUS_LABEL = "No bonuses detected.";
BONUSSCANNER_CUREQ_LABEL = "Current equipment bonuses";
BONUSSCANNER_CUREQDET_LABEL = "Current equipment bonus details";
BONUSSCANNER_OOR_LABEL = " is out of range.";
BONUSSCANNER_GEMCOUNT_LABEL = "Counts as ";
BONUSSCANNER_INVALIDTAR_LABEL ="Invalid target to scan.";
BONUSSCANNER_SELTAR_LABEL = "Please select a target first.";
BONUSSCANNER_SLOT_LABEL = "slot";
BONUSSCANNER_FAILEDPARSE_LABEL = "Item is either not cached or hasn't been validated on the server.";
BONUSSCANNER_CACHESUMMARY_LABEL = "BonusScanner items cached: ";
BONUSSCANNER_CACHECLEAR_LABEL = "BonusScanner item cache has been cleared.";
BONUSSCANNER_SPECIAL1_LABEL = " crit chance";
BONUSSCANNER_SPECIAL2_LABEL = " dodged/parried";
BONUSSCANNER_ITEMID_LABEL = "Item ID: |cffffffff";
BONUSSCANNER_ILVL_LABEL = "Item Level: |cffffffff";
BONUSSCANNER_ENCHANTID_LABEL = "Enchant ID: |cffffffff";
BONUSSCANNER_GEM1ID_LABEL = "Gem1 ID: |cffffffff";
BONUSSCANNER_GEM2ID_LABEL = "Gem2 ID: |cffffffff";
BONUSSCANNER_GEM3ID_LABEL = "Gem3 ID: |cffffffff";
BONUSSCANNER_GEMRED_LABEL = "Red";
BONUSSCANNER_GEMBLUE_LABEL = "Blue";
BONUSSCANNER_GEMYELLOW_LABEL = "Yellow";
--bonus categories
BONUSSCANNER_CAT_ATT = "Attributes";
BONUSSCANNER_CAT_RES = "Resistance";
BONUSSCANNER_CAT_SKILL = "Skills";
BONUSSCANNER_CAT_BON = "Melee and ranged combat";
BONUSSCANNER_CAT_SBON = "Spells";
BONUSSCANNER_CAT_OBON = "Life and mana";
BONUSSCANNER_CAT_EBON = "Special Bonuses";
BONUSSCANNER_CAT_GEMS = "Socketed Gems";
--slash command text
BONUSSCANNER_SLASH_STRING1 = "";
BONUSSCANNER_SLASH_STRING1a = "";
BONUSSCANNER_SLASH_STRING2 = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/bs {show | details | tooltip | tooltip gems | itembasic | itemextend | clearcache | target | target <player> | <itemlink> | <itemlink> <player> | <slotname>}";
BONUSSCANNER_SLASH_STRING3 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."show: |cffffffffShows all the bonuses of the current equipment.";
BONUSSCANNER_SLASH_STRING4 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."details: |cffffffffShows bonuses with slot distribution.";
BONUSSCANNER_SLASH_STRING5 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."tooltip: [";
BONUSSCANNER_SLASH_STRING5a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffAttaches item bonus summary on tooltips.";
BONUSSCANNER_SLASH_STRING14 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."tooltip gems: [";
BONUSSCANNER_SLASH_STRING14a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffAttaches gem color count on tooltips (requires tooltips enabled).";
BONUSSCANNER_SLASH_STRING12 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."itembasic: [";
BONUSSCANNER_SLASH_STRING12a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffAttaches item level and item ID properties on tooltips.";
BONUSSCANNER_SLASH_STRING13 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."itemextend: [";
BONUSSCANNER_SLASH_STRING13a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffAttaches enchant and gem ID properties on tooltips.";
BONUSSCANNER_SLASH_STRING11 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."clearcache: |cffffffffClears the item cache and forces a garbage collection.";
BONUSSCANNER_SLASH_STRING6 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."target: |cffffffffShows bonuses for your target's equipped gear (must be in inspect range).";
BONUSSCANNER_SLASH_STRING7 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."target <player>: |cffffffffWhispers bonuses for your target's equipped gear to the player specified.";
BONUSSCANNER_SLASH_STRING8 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<itemlink>: |cffffffffShows bonuses of linked item (insert link with Shift-Click).";
BONUSSCANNER_SLASH_STRING9 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<itemlink> <player>: |cffffffffWhispers bonuses of linked item to the player specified.";
BONUSSCANNER_SLASH_STRING10 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<slotname>: |cffffffffShows bonuses of given equipment slot.";