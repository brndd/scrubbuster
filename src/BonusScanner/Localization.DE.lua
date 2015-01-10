-- German localization for 3.3 by Tristanian (work in progress)

if (GetLocale() == "deDE") then
-- bonus names
BONUSSCANNER_NAMES = {
--Base Stats
	STR 		= "Stärke",
	AGI 		= "Beweglichkeit",
	STA 		= "Ausdauer",
	INT 		= "Intelligenz",
	SPI 		= "Willenskraft",
	ARMOR 	= "Rüstung",

--Resistances
	ARCANERES = "Arkanwiderstand",	
	FIRERES 	= "Feuerwiderstand",
	NATURERES = "Naturwiderstand",
	FROSTRES 	= "Frostwiderstand",
	SHADOWRES = "Schattenwiderstand",

--Skills
	FISHING 	= "Angeln",
	MINING 		= "Bergbau",
	HERBALISM = "Kräuterkunde",
	SKINNING 	= "Kürschnerei",
	DEFENSE 	= "Verteidigungswertung",
	EXPERTISE = "Waffenkundewertung",

--Abilities
	BLOCK		= "Blockwertung",
	BLOCKVALUE	= "Blockwert des Schildes",
	DODGE 		= "Ausweichwertung",
	PARRY 		= "Parrierwertung",
	RESILIENCE = "Abhärtungswertung", 
	DMGWPN = "Waffenschaden", 
	RANGEDDMG = "Distanzschaden", 
	ARMORPEN = "Ignorierte Rüstung",

--Attack Power
	ATTACKPOWER	= "Angriffskraft",
	ATTACKPOWERUNDEAD	= "Angriffskraft gegen Untote",
-- ATTACKPOWERBEAST	= "Angriffskraft gegen Monster", --Added by jmlsteele, commented out until further notice since it is of minor significance
	ATTACKPOWERFERAL	= "Angriffskraft in Tierform",
	RANGEDATTACKPOWER = "Distanzangriffskraft",
	
--Critical
	CRIT 		= "Kritische Trefferwertung",
	SPELLCRIT 	= "Kritische Zaubertrefferwertung",
	RANGEDCRIT 	= "Krit. Schuss",
	HOLYCRIT 	= "Krit. Heiligzauber",

--Hit
	TOHIT 		= "Trefferwertung",
	RANGEDHIT	= "Distanztrefferwertung",
	SPELLTOHIT 	= "Zaubertrefferwertung",
  
--Haste
	HASTE = "Tempowertung",
	SPELLH = "Zaubertempowertung",

--Spell Damage/healing
	DMG 		= "Zauberschaden",
	DMGUNDEAD	= "Zauberschaden gegen Untote",
	ARCANEDMG 	= "Arkanschaden",
	FIREDMG 	= "Feuerschaden",
	FROSTDMG 	= "Frostschaden",
	HOLYDMG 	= "Heiligschaden",
	NATUREDMG 	= "Naturschaden",
	SHADOWDMG 	= "Schattenschaden",
	SPELLPEN 	= "Zauberdurchschlagskraft",
	HEAL 		= "Heilung",

--Regen
	HEALTHREG 	= "Lebensregeneration",
	MANAREG 	= "Manaregeneration",

--Health/mana
	HEALTH = "Lebenspunkte",
	MANA = "Manapunkte",
	
	--Extra bonuses
  THREATREDUCTION = "% Verringerte Bedrohung",
  THREATINCREASE = "% Erhöhte Bedrohung",
  INCRCRITDMG = "% Erhöhter Kritischer Schaden",
  SPELLREFLECT = "% Zauberreflexion",
  SNARERESIST = "% Widerstand gegen Bewegungseinschränkung",
  STUNRESIST = "% Betäubungswiderstand",
  PERCINT = "% Intelligenz",
  PERCBLOCKVALUE = "% Blockwert des Schildes"
};

-- equip and set bonus prefixes:
--BONUSSCANNER_PREFIX_EQUIP = "Anlegen: ";
BONUSSCANNER_PREFIX_SET = "Set: ";
BONUSSCANNER_PREFIX_SOCKET = "Sockelbonus: ";
BONUSSCANNER_WEAPON_SPEED = "Tempo";
BONUSSCANNER_HEALING_LINE = "Heilung";
BONUSSCANNER_SPELLD_LINE = "Zauberschaden";

-- Enchant separators
BONUSSCANNER_GLOBAL_SEP = " +";
BONUSSCANNER_SEPARATORS = { "/", " & ", " und ", ", " };

-- passive bonus patterns. checked against lines which start with above prefixes
BONUSSCANNER_PATTERNS_PASSIVE = {
--Skills
	{ pattern = "Erhöht Verteidigungswertung um (%d+)%.", effect = "DEFENSE" }, 
	{ pattern = "Erhöht die Verteidigungswertung um (%d+)%.", effect = "DEFENSE" }, 
  { pattern = "Erhöht Eure Abhärtungswertung um (%d+)%.", effect = "RESILIENCE" }, 
  { pattern = "Erhöht Eure Waffenkundewertung um (%d+)%.", effect = "EXPERTISE" },
  { pattern = "Angeln %+(%d+)%.", effect = "FISHING" },

-- Abilities
	{ pattern = "Erhöht Eure Blockwertung um (%d+)%.", effect = "BLOCK" },
	{ pattern = "Erhöht den Blockwert Eures Schildes um (%d+)%.", effect = "BLOCKVALUE" },
	{ pattern = "Erhöht Eure Ausweichwertung um (%d+)%.", effect = "DODGE" },
	{ pattern = "Erhöht Eure Parrierwertung um (%d+)%.", effect = "PARRY" },
	{ pattern = "%+(%d+) Waffenschaden%.", effect = "DMGWPN" },

--Crit
	{ pattern = "Erhöht Eure kritische Trefferwertung um (%d+)%.", effect = "CRIT" },
	{ pattern = "Erhöht kritische Trefferwertung um (%d+)%.", effect = "CRIT" }, 
	{ pattern = "Erhöht kritische Nahkampftrefferwertung um (%d+)%.", effect = "CRIT" },
	{ pattern = "Erhöht Eure kritische Zaubertrefferwertung um (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Erhöht kritische Zaubertrefferwertung um (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Erhöht Eure kritische Distanztrefferwertung um (%d+)%.", effect = "RANGEDCRIT" },

--Damage/Heal
	{ pattern = "Erhöht durch Arkanzauber und Arkaneffekte zugefügten Schaden um bis zu (%d+)%.", effect = "ARCANEDMG" },
	{ pattern = "Erhöht durch Feuerzauber und Feuereffekte zugefügten Schaden um bis zu (%d+)%.", effect = "FIREDMG" },
	{ pattern = "Erhöht durch Frostzauber und Frosteffekte zugefügten Schaden um bis zu (%d+)%.", effect = "FROSTDMG" },
	{ pattern = "Erhöht durch Heiligzauber und Heiligeffekte zugefügten Schaden um bis zu (%d+)%.", effect = "HOLYDMG" },
	{ pattern = "Erhöht durch Naturzauber und Natureffekte zugefügten Schaden um bis zu (%d+)%.", effect = "NATUREDMG" },
	{ pattern = "Erhöht durch Schattenzauber und Schatteneffekte zugefügten Schaden um bis zu (%d+)%.", effect = "SHADOWDMG" },
	{ pattern = "Erhöht durch Zauber und Effekte verursachte Heilung um bis zu (%d+)%.", effect = "HEAL" },
	{ pattern = "Erhöht durch Zauber und magische Effekte zugefügten Schaden und Heilung um bis zu (%d+)%.", effect = {"HEAL", "DMG"} },
	{ pattern = "Erhöht durch Zauber und magische Effekte verursachten Schaden und Heilung um bis zu (%d+)%.", effect = {"HEAL", "DMG"} },
	{ pattern = "Erhöht durch Zauber und magische Effekte verursachten Schaden und Heilung leicht%.", effect = {"HEAL", "DMG"}, value = {6, 6} },
	{ pattern = "Erhöht den durch magische Zauber und magische Effekte zugefügten Schaden gegen Untote um bis zu (%d+)%.", effect = "DMGUNDEAD" },
	
-- Multibonus Equip patterns
  { pattern = "Erhöht durch sämtliche Zauber und magische Effekte verursachte Heilung um bis zu (%d+) und den verursachten Schaden um bis zu (%d+)%.", effect = {"HEAL","DMG"} },
	{ pattern = "Erhöht die Widerstände Eures Begleiters um 130 und Euren Zauberschaden um bis zu (%d+)%.", effect = "DMG" }, -- Void Star Talisman
	{ pattern = "Erhöht Euren Zauberschaden um bis zu (%d+) und Eure Heilung um bis zu (%d+)%.", effect = {"DMG","HEAL"} },
	{ pattern = "Erhöht durch Zauber und magische Effekte verursachte Heilung aller Gruppenmitglieder, die sich im Umkreis von %d+ Metern befinden, um bis zu (%d+)%.", effect = "HEAL" },
	{ pattern = "Erhöht durch Zauber und magische Effekte verursachte Schaden und Heilung aller Gruppenmitglieder, die sich im Umkreis von %d+ Metern befinden, um bis zu (%d+)%.", effect = {"HEAL", "DMG"} },
	{ pattern = "Stellt alle 5 Sek. (%d+) Mana bei allen Gruppenmitgliedern, die sich im Umkreis von %d+ Metern befinden, wieder her.", effect = "MANAREG" },
	{ pattern = "Erhöht die kritische Zaubertrefferwertung aller Gruppenmitglieder innerhalb von %d+ Metern um (%d+)%.", effect = "SPELLCRIT" },
	{ pattern = "Verbessert Verteidigungswertung um (%d+), Schattenwiderstand um (%d+) sowie Eure normale Gesundheitsregeneration um (%d+)%.", effect = {"DEFENSE", "SHADOWRES", "HEALTHREG"} },
	
	
--Attack power
	{ pattern = "Erhöht die Angriffskraft um (%d+)%.", effect = "ATTACKPOWER" },
	{ pattern = "Verbessert Eure Angriffskraft um (%d+)%.", effect = "ATTACKPOWER" },
	{ pattern = "Erhöht die Nahkampf- und Distanzangriffskraft um (%d+)%.", effect = {"ATTACKPOWER","RANGEDATTACKPOWER"} }, -- Andonisus, Reaper of Souls pattern
	{ pattern = "+(%d+) Distanzangriffskraft.", effect = "RANGEDATTACKPOWER" },
	{ pattern = "Erhöht die Distanzangriffskraft um (%d+)%.", effect = "RANGEDATTACKPOWER" },
  { pattern = "Erhöht die Angriffskraft in Katzengestalt, Bärengestalt, Terrorbärengestalt oder Mondkingestalt um (%d+)", effect = "ATTACKPOWERFERAL" },
  { pattern = "Erhöht die Angriffskraft im Kampf gegen Untote um (%d+)%.", effect = "ATTACKPOWERUNDEAD" },
  { pattern = "Erhöht die Angriffskraft im Kampf gegen Untote um (%d+)%. Ermöglicht das Einsammeln von Geißelsteinen im Namen der Agentumdämmerung.", effect = "ATTACKPOWERUNDEAD" },
  
--Regen
	{ pattern = "Stellt alle 5 Sek%. (%d+) Gesundheit wieder her%.", effect = "HEALTHREG" }, 
	{ pattern = "Stellt alle 5 Sek%. (%d+) Mana wieder her%.", effect = "MANAREG" },
	
	
--Hit
	{ pattern = "Erhöht Eure Trefferwertung um (%d+)%.", effect = "TOHIT" },
	{ pattern = "Erhöht Trefferwertung um (%d+)%.", effect = "TOHIT" }, 
	{ pattern = "Erhöht Eure Zaubertrefferwertung um (%d+)%.", effect = "SPELLTOHIT" },
	{ pattern = "Erhöht Zaubertrefferwertung um (%d+)%.", effect = "SPELLTOHIT" },
	
--Haste
	{ pattern = "Erhöht Tempowertung um (%d+)%.", effect = "HASTE" },
	{ pattern = "Erhöht Zaubertempowertung um (%d+)%.", effect = "SPELLH" },
	
--Penetration
	{ pattern = "Reduziert die Magiewiderstände der Ziele Eurer Zauber um (%d+)%.", effect = "SPELLPEN" },
	{ pattern = "Erhöht Eure Zauberdurchschlagskraft um (%d+)%.", effect = "SPELLPEN" },
	{ pattern = "Eure Angriffe ignorieren (%d+) Rüstung Eures Gegners%.", effect = "ARMORPEN" }
	
};

-- generic patterns have the form "+xx bonus" or "bonus +xx" or even "xx bonus" with an optional % sign after the value.

-- first the generic bonus string is looked up in the following table
BONUSSCANNER_PATTERNS_GENERIC_LOOKUP = {
	["Alle Werte"] 	= {"STR", "AGI", "STA", "INT", "SPI"},
	["Stärke"]			= "STR",
	["Beweglichkeit"]	= "AGI",
	["Ausdauer"]			= "STA",
	["Intelligenz"]		= "INT",
	["Willenskraft"] 	= "SPI",

	["Alle Widerstandsarten"] 	= { "ARCANERES", "FIRERES", "FROSTRES", "NATURERES", "SHADOWRES"},
	

	["Angeln"]		= "FISHING",
	["Angelköder"]	= "FISHING",
	["Bergbau"]		= "MINING",
	["Kräuterkunde"]	= "HERBALISM",
	["Kürschnerei"]		= "SKINNING",
	["Verteidigung"]	= "DEFENSE",
	["Verteidigungsfertigkeit"]	= "DEFENSE",

	["Angriffskraft"] 	= "ATTACKPOWER",
  ["Angriffskraft gegen Untote"] 		= "ATTACKPOWERUNDEAD",
	["Angriffskraft in Katzengestalt, Bärengestalt, Terrorbärengestalt oder Mondkingestalt"] = "ATTACKPOWERFERAL",
	["Waffenschaden"] = "DMGWPN",
	
	-- TBC Patterns Generic/Gems/Sockets
	
	["Kritische Zaubertrefferwertung"] = "SPELLCRIT",
	["Zaubertrefferwertung"]= "SPELLTOHIT",
	["Zauberkraft"] = {"HEAL", "DMG"},
	["Kritische Trefferwertung"] = "CRIT",
	["Zauberdurchschlagskraft"] = "SPELLPEN",
	["Verteidigungswertung"] = "DEFENSE",
	["Tempowertung"] = "HASTE",
	["Zaubertempowertung"] = "SPELLH",
	["Mana Per 5 sec"] = "MANAREG",
	["mana per 5 sec"] = "MANAREG",
	["Mana per 5 Sec"] = "MANAREG",
	["Mana per 5 sec"] = "MANAREG", 
	["Mana per 5 Sek"] = "MANAREG",
	["Mana alle 5 Sekunden"] = "MANAREG",
	["Mana alle 5 Sek"] = "MANAREG",
	["Ausweichwertung"] 		= "DODGE",
	["Parierwertung"] = "PARRY",
	["Abhärtungswertung"] = "RESILIENCE",
	["Nahkampfschaden"] = "DMGWPN",
	["Schadenszauber"] = "DMG",
	["Waffenkundewertung"] = "EXPERTISE",
	
	-- End TBC Patterns

	["Ausweichen"] 		= "DODGE",
	["Blocken"]		= "BLOCKVALUE",
	["Blockwert"]		= "BLOCKVALUE",
	["Blockwertung"]		= "BLOCK",
	["Trefferchance"] 		= "TOHIT",
	["Trefferwertung"] = "TOHIT",	
	["Zaubertrefferchance"]		= "SPELLTOHIT",
	["Distanzangriffskraft"]	= "RANGEDATTACKPOWER",
	["distanzangriffskraft"]	= "RANGEDATTACKPOWER", -- Experimental for TBC
	["Gesundheit alle 5 Sek"]	= "HEALTHREG",
	["Gesundheit in 5 Sek"]	= "HEALTHREG",
	["Heilung"] = "HEAL",
	["Heilzauber"] 	= "HEAL",
	["Erhöht Heilung"] 	= "HEAL",
	["Mana Regen"] = "MANAREG",
	["Manaregeneration"] = "MANAREG",
	--multivalue
	["Zauberschaden"]	= {"HEAL", "DMG"},
	--/multivalue
	["Kritischer Treffer"]	= "CRIT",
	["Zauberschaden erhöhen"]		= "DMG",
	["Gesundheit"]		= "HEALTH",
	["HP"]			= "HEALTH",
	["GP"]			= "HEALTH",
	["Mana"]		= "MANA",
	["Rüstung"]		= "ARMOR",
	["Verstärkte Rüstung"]	= "ARMOR",
	["Abhärtung"]	= "RESILIENCE",
	["Distanztrefferwertung"] = "RANGEDHIT"
};	

-- next we try to match against one pattern of stage 1 and one pattern of stage 2 and concatenate the effect strings
BONUSSCANNER_PATTERNS_GENERIC_STAGE1 = {
	{ pattern = "Arkan", 	effect = "ARCANE" },	
	{ pattern = "Feuer", 	effect = "FIRE" },	
	{ pattern = "Frost", 	effect = "FROST" },	
	{ pattern = "Heilig", 	effect = "HOLY" },	
	{ pattern = "Schatten",	effect = "SHADOW" },	
	{ pattern = "Natur", 	effect = "NATURE" }
}; 	

BONUSSCANNER_PATTERNS_GENERIC_STAGE2 = {
	{ pattern = "widerstand", 	effect = "RES" },	
	{ pattern = "schaden", 	effect = "DMG" },
	{ pattern = "zauber", 	effect = "DMG" },
	{ pattern = "effekte", 	effect = "DMG" }
}; 	

-- finally if we got no match, we match against some special enchantment patterns.
BONUSSCANNER_PATTERNS_OTHER = {

-- mage/warlock ZG patterns
-- Aldor/Scryer enchants that cannot be handled any other way
	{ pattern = "%+18 Heilung und Zauberschaden%s/%s%+8 Zaubertrefferwertung", effect = {"DMG", "HEAL", "SPELLTOHIT" }, value = {18, 18, 8} },
	{ pattern = "%+18 Heilung und Zauberschaden%s/%s%+10 Ausdauer", effect = {"DMG", "HEAL", "STA" }, value = {18, 18, 10} },
  { pattern = "%+15 Kritische Zaubertrefferwertung und %+12 Zauberschaden und Heilung", effect = {"SPELLCRIT", "HEAL", "DMG" }, value = {15, 12, 12} },
	{ pattern = "%+15 Ausweichwertung und Verteidigungswertung %+10", effect = {"DODGE", "DEFENSE"}, value = {15, 10} },
	
-- special patterns that cannot be handled any other way	
	{ pattern = "%+(%d+) Heilung und Zauberschaden", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Schaden und Heilzauber", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Zauberschaden und Heilung", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Schadenszauber und Heilzauber", effect = {"DMG", "HEAL"} },
	{ pattern = "%+(%d+) Schadens- und Heilzauber", effect = {"DMG", "HEAL"} },
	
-- special metagem patterns
  { pattern = "+12 Beweglichkeit und um 3%% erhöhter kritischer Schaden", effect = {"AGI","INCRCRITDMG"}, value = {12, 3} },
  { pattern = "%+26 Heilung %+9 Zauberschaden und 2%% verringerte Bedrohung", effect = {"HEAL", "DMG", "THREATREDUCTION"}, value = {26, 9, 2} },
  { pattern = "+12 Kritische Zaubertrefferwertung und um 3%% erhöhter kritischer Schaden", effect = {"SPELLCRIT", "INCRCRITDMG"}, value = {12, 3} },
  { pattern = "+14 Kritische Zaubertrefferwertung und 1%% Zauberreflexion", effect = {"SPELLCRIT", "SPELLREFLECT"}, value = {14, 1} },
  { pattern = "+12 Kritische Trefferwertung und 5%% Widerstand gegen Bewegungseinschränkung", effect = {"CRIT", "SNARERESIST"}, value = {12, 5} },
  { pattern = "+14 Zauberschaden und 5%% Betäubungswiderstand", effect = {"DMG", "STUNRESIST"}, value = {14, 5} },
  { pattern = "+24 Angriffskraft und 5%% Betäubungswiderstand", effect = {"ATTACKPOWER", "STUNRESIST"}, value = {24, 5} },
  { pattern = "+18 Ausdauer und 5%% Betäubungswiderstand", effect = {"STA", "STUNRESIST"}, value = {18, 5} },
  { pattern = "%+14 Zauberschaden und %+2%% Intelligenz", effect = {"DMG", "PERCINT"}, value = {14, 2} },
  { pattern = "%+12 Verteidigungswertung und %+10%% Blockwert des Schildes", effect = {"DEFENSE", "PERCBLOCKVALUE"}, value = {12, 10} },

--rest of custom patterns
	{ pattern = "Manaregeneration (%d+) pro 5 Sek", effect = "MANAREG" },
	{ pattern = "Manaregeneration (%d+) per 5 Sek", effect = "MANAREG" },
	{ pattern = "alle 5 Sek%. (%d+) Mana", effect = "MANAREG" },
	{ pattern = "Alle 5 Sek%. (%d+) Mana", effect = "MANAREG" },
	{ pattern = "Verstärkt %(%+(%d+) Rüstung%)", effect = "ARMOR" },
	{ pattern = "%+(%d+)%% Bedrohung", effect = "THREATINCREASE" },
	{ pattern = "Zielfernrohr %(%+(%d+) Schaden%)", effect = "RANGEDDMG" },
	{ pattern = "Feingefühl", effect = "THREATREDUCTION", value = 2 },
	
	{ pattern = "Vitalität", effect = { "MANAREG", "HEALTHREG"}, value = {4, 4} },
	{ pattern = "Seelenfrost", effect = {"FROSTDMG", "SHADOWDMG"}, value = {54, 54} },
	{ pattern = "Sonnenfeuer", effect = {"ARCANEDMG", "FIREDMG"}, value = {50, 50} },
	{ pattern = "Unbändigkeit", effect = "ATTACKPOWER", value = 70 },	
	{ pattern = "Sicherer Stand", effect = {"TOHIT", "SNARERESIST"}, value = {10, 5} }
};

-- localized strings
BONUSSCANNER_BONUSSUM_LABEL = "Item Bonus Zusammenfassung";
BONUSSCANNER_TOOLTIP_STRING = "BonusScanner Tooltip Bonus Zusammenfassung ";
BONUSSCANNER_TOOLTIPGEMS_STRING = "Edelsteinfarben ";
BONUSSCANNER_HIDDENSD_STRING = "Zauberschaden Abfrage ";
BONUSSCANNER_BASICLINKID_STRING = "Basis Itemlink ID's ";
BONUSSCANNER_EXTENDEDLINKID_STRING = "Erweiterte Itemlink ID's "; -- SENSITY
BONUSSCANNER_TOOLTIP_ENABLED = "Aktiviert";
BONUSSCANNER_TOOLTIP_DISABLED = "Deaktiviert";
BONUSSCANNER_IBONUS_LABEL = "Boni für ";
BONUSSCANNER_NOBONUS_LABEL = "Keine Boni.";
BONUSSCANNER_CUREQ_LABEL = "Derzeitige Ausrüstungs-Boni";
BONUSSCANNER_CUREQDET_LABEL = "Derzeitige Ausrüstungs-Boni Details";
BONUSSCANNER_OOR_LABEL = " ist ausserhalb der Reichweite."; -- SENSITY
BONUSSCANNER_GEMCOUNT_LABEL = "Gelten als ";
BONUSSCANNER_INVALIDTAR_LABEL ="Ungültiges Ziel zum Scannen."; -- SENSITY
BONUSSCANNER_SELTAR_LABEL = "Wählen Sie bitte zuerst ein Ziel."; -- SENSITY
BONUSSCANNER_SLOT_LABEL = "slot";
BONUSSCANNER_FAILEDPARSE_LABEL = "Gegenstand ist nicht gespeichert oder konnte nicht auf dem Server verglichen werden."; -- SENSITY
BONUSSCANNER_CACHESUMMARY_LABEL = "gespeicherte Bonusscanner-Items: "; -- SENSITY
BONUSSCANNER_CACHECLEAR_LABEL = "Bonusscanner-Itemcache gelöscht."; -- SENSITY
BONUSSCANNER_SPECIAL1_LABEL = " kritische Trefferchance"; -- SENSITY
BONUSSCANNER_SPECIAL2_LABEL = " ausgewichen/abgewehrt";
BONUSSCANNER_ITEMID_LABEL = "Gegenstands-ID: |cffffffff";
BONUSSCANNER_ILVL_LABEL = "Gegenstandslevel: |cffffffff";
BONUSSCANNER_ENCHANTID_LABEL = "Verzauberungs-ID: |cffffffff";
BONUSSCANNER_GEM1ID_LABEL = "Edelstein1 ID: |cffffffff";
BONUSSCANNER_GEM2ID_LABEL = "Edelstein2 ID: |cffffffff";
BONUSSCANNER_GEM3ID_LABEL = "Edelstein3 ID: |cffffffff";
BONUSSCANNER_GEMRED_LABEL = "Rot";
BONUSSCANNER_GEMBLUE_LABEL = "Blau";
BONUSSCANNER_GEMYELLOW_LABEL = "Gelb";
--bonus categories
BONUSSCANNER_CAT_ATT = "Attribute";
BONUSSCANNER_CAT_RES = "Widerstand";
BONUSSCANNER_CAT_SKILL = "Fertigkeiten";
BONUSSCANNER_CAT_BON = "Nah- und Fernkampf";
BONUSSCANNER_CAT_SBON = "Zauber";
BONUSSCANNER_CAT_OBON = "Leben und Mana";
BONUSSCANNER_CAT_EBON = "Spezielle Fähigkeiten";
BONUSSCANNER_CAT_GEMS = "Edelsteine";
--slash command text
BONUSSCANNER_SLASH_STRING1 = GREEN_FONT_COLOR_CODE.."BonusScanner ";
BONUSSCANNER_SLASH_STRING1a = "|cffffffff by Crowley, Archarodim, jmsteele, Tristanian";
BONUSSCANNER_SLASH_STRING2 = LIGHTYELLOW_FONT_COLOR_CODE.."Usage: |cffffffff/bs {show | details | tooltip | tooltip gems | itembasic | itemextend | clearcache | target | target <player> | <itemlink> | <itemlink> <player> | <slotname>}";
BONUSSCANNER_SLASH_STRING3 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."show: |cffffffffZeige alle Boni der aktuellen Ausrüstung.";
BONUSSCANNER_SLASH_STRING4 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."details: |cffffffffZeige Boni nach Slot-Verteilung.";
BONUSSCANNER_SLASH_STRING5 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."tooltip: [";
BONUSSCANNER_SLASH_STRING5a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffErgänzt Tooltip mit Item-Zusammenfassung."; -- SENSITY
BONUSSCANNER_SLASH_STRING14 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."tooltip gems: [";
BONUSSCANNER_SLASH_STRING14a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffErgänzt Tooltip mit Edelsteinfarben (erfordert aktivierte Tooltips)."; -- SENSITY
BONUSSCANNER_SLASH_STRING12 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."itembasic: [";
BONUSSCANNER_SLASH_STRING12a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffErgänzt Tooltip mit Gegenstandslevel und -ID."; -- SENSITY
BONUSSCANNER_SLASH_STRING13 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."itemextend: [";
BONUSSCANNER_SLASH_STRING13a = LIGHTYELLOW_FONT_COLOR_CODE.."] |cffffffffErgänzt Tooltip mit Verzauberungs- u. Edelstein-ID."; -- SENSITY
BONUSSCANNER_SLASH_STRING11 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."clearcache: |cffffffffLöscht den Item-Cache."; -- SENSITY
BONUSSCANNER_SLASH_STRING6 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."target: |cffffffffZeige Boni der Ausrüstung eines anderen Spielers.";
BONUSSCANNER_SLASH_STRING7 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."target <player>: |cffffffffSendet Ausrüstungsboni des Ziels (muss in Reichweite sein) an einen ausgewählten Spieler."; -- SENSITY
BONUSSCANNER_SLASH_STRING8 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<itemlink>: |cffffffffZeige Boni eines gelinkten Gegenstands."; -- SENSITY
BONUSSCANNER_SLASH_STRING9 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<itemlink> <player>: |cffffffffSendet Gegenstandsboni an einen ausgewählten Spieler."; -- SENSITY
BONUSSCANNER_SLASH_STRING10 = " - "..LIGHTYELLOW_FONT_COLOR_CODE.."<slotname>: |cffffffffZeige Boni für bestimten Slot.";
end