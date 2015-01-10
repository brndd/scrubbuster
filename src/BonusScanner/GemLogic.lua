-- Gem color table and potential logic data (for future releases)
-- based on an idea derived by the GemHelper addon
-- GemHelper is an addon by Xinhuan @ US Blackrock Alliance (http://wowui.incgamers.com/?p=mod&m=4149)
-- all rights recognised
BonusScanner_Gems = {
-- Crafted Uncommon Quality Gems
{ itemID = "23095", red = 1, yellow = 0, blue = 0, meta = 0 }, --Bold Blood Garnet
{ itemID = "28595", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Blood Garnet
{ itemID = "23113", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Golden Draenite
{ itemID = "23106", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Deep Peridot
{ itemID = "23097", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Blood Garnet
{ itemID = "23105", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Deep Peridot
{ itemID = "23114", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Golden Draenite
{ itemID = "23100", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Flame Spessarite
{ itemID = "23108", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Shadow Draenite
{ itemID = "23098", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Flame Spessarite	
{ itemID = "23104", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Deep Peridot	
{ itemID = "23099", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Flame Spessarite
{ itemID = "23121", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Azure Moonstone
{ itemID = "23101", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Flame Spessarite	
{ itemID = "23103", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Deep Peridot
{ itemID = "23116", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Golden Draenite
{ itemID = "23109", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Shadow Draenite
{ itemID = "23096", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Blood Garnet
{ itemID = "23110", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Shadow Draenite
{ itemID = "28290", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Golden Draenite
{ itemID = "23118", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Azure Moonstone
{ itemID = "23111", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Shadow Draenite
{ itemID = "23119", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Azure Moonstone
{ itemID = "23120", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Azure Moonstone
{ itemID = "23094", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Blood Garnet
{ itemID = "23115", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Golden Draenite
-- Crafted Rare Quality Gems
{ itemID = "24027", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Living Ruby
{ itemID = "24031", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Living Ruby
{ itemID = "24047", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Dawnstone
{ itemID = "24065", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Dazzling Talasite
{ itemID = "24028", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Living Ruby
{ itemID = "24062", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Enduring Talasite
{ itemID = "24036", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Flashing Living Ruby
{ itemID = "24050", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Dawnstone
{ itemID = "24061", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Glinting Noble Topaz
{ itemID = "24056", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Glowing Nightseye
{ itemID = "24058", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Noble Topaz
{ itemID = "24067", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Jagged Talasite
{ itemID = "24060", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Luminous Noble Topaz
{ itemID = "24037", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Star of Elune
{ itemID = "24059", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Noble Topaz
{ itemID = "24066", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Radiant Talasite
{ itemID = "24051", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Dawnstone
{ itemID = "24057", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Royal Nightseye
{ itemID = "24030", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Living Ruby
{ itemID = "24055", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Shifting Nightseye
{ itemID = "24048", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Dawnstone
{ itemID = "24033", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Star of Elune
{ itemID = "24054", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Sovereign Nightseye
{ itemID = "24035", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Star of Elune
{ itemID = "24039", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Stormy Star of Elune
{ itemID = "24032", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Subtle Living Ruby
{ itemID = "24029", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Living Ruby
{ itemID = "24052", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Dawnstone
	-- Crafted Rare Meta Gems
{ itemID = "25897", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Bracing Earthstorm Diamond
{ itemID = "25899", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Brutal Earthstorm Diamond
{ itemID = "25890", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Destructive Skyfire Diamond
{ itemID = "25895", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Enigmatic Skyfire Diamond
{ itemID = "25901", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Insightful Earthstorm Diamond
{ itemID = "25893", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Mystical Skyfire Diamond
{ itemID = "25896", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Powerful Earthstorm Diamond
{ itemID = "25894", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Skyfire Diamond
{ itemID = "25898", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Tenacious Earthstorm Diamond
	-- Enchanter Created
{ itemID = "22460", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Prismatic Sphere
{ itemID = "22459", red = 1, yellow = 1, blue = 1, meta = 0 }, -- Void Sphere
	-- PvP Purchased Rare Meta Gems (Terrokar Spirit Towers)
{ itemID = "28557", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Starfire Diamond
{ itemID = "28556", red = 0, yellow = 0, blue = 0, meta = 1 }, -- Swift Windfire Diamond
	-- PvP Purchased Gems (Nagrand, Halaa)
{ itemID = "27679", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Sublime Mystic Dawnstone
{ itemID = "30598", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Don Amancio's Heart
-- PvP Purchased Epic Gems (Honor Points)
{ itemID = "28362", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Ornate Ruby
{ itemID = "28120", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Ornate Dawnstone
{ itemID = "28363", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Inscribed Ornate Topaz
{ itemID = "28123", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Potent Ornate Topaz
{ itemID = "28118", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Ornate Ruby
{ itemID = "28119", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Ornate Dawnstone
	-- PvP Puchased Rare Gems (Honor Hold/Thrallmar)
{ itemID = "27809", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Barbed Deep Peridot
{ itemID = "27786", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Barbed Deep Peridot
{ itemID = "28361", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Mighty Blood Garnet
{ itemID = "28360", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Mighty Blood Garnet
{ itemID = "27820", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Notched Deep Peridot
{ itemID = "27785", red = 0, yellow = 1, blue = 1, meta = 0 }, -- Notched Deep Peridot
{ itemID = "27812", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Stark Blood Garnet
{ itemID = "27777", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Stark Blood Garnet
-- Vendor Purchased (Common Gems)
{ itemID = "28458", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bold Tourmaline
{ itemID = "28462", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Bright Tourmaline
{ itemID = "28466", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Brilliant Amber
{ itemID = "28459", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Delicate Tourmaline
{ itemID = "28469", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Gleaming Amber
{ itemID = "28465", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Lustrous Zircon
{ itemID = "28468", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Rigid Amber
{ itemID = "28461", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Runed Tourmaline
{ itemID = "28467", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Smooth Amber	
{ itemID = "28463", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Solid Zircon	
{ itemID = "28464", red = 0, yellow = 0, blue = 1, meta = 0 }, -- Sparkling Zircon
{ itemID = "28460", red = 1, yellow = 0, blue = 0, meta = 0 }, -- Teardrop Tourmaline	
{ itemID = "28470", red = 0, yellow = 1, blue = 0, meta = 0 }, -- Thick Amber	
-- Instance Epic Gem Drops
{ itemID = "30565", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Assassin's Fire Opal
{ itemID = "30601", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Beaming Fire Opal
{ itemID = "30574", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Brutal Tanzanite
{ itemID = "30587", red = 1, yellow = 1, blue = 0, meta = 0 }, -- Champion's Fire Opal
{ itemID = "30566", red = 1, yellow = 0, blue = 1, meta = 0 }, -- Defender's Tanzanite
{ itemID = "30594", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Effulgent Chrysoprase
{ itemID = "30584", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Enscribed Fire Opal
{ itemID = "30559", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Etched Fire Opal
{ itemID = "30600", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Fluorescent Tanzanite		
{ itemID = "30558", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glimmering Fire Opal
{ itemID = "30556", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glinting Fire Opal
{ itemID = "30585", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glistening Fire Opal
{ itemID = "30555", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Glowing Tanzanite
{ itemID = "31116", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Amethyst
{ itemID = "30551", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Infused Fire Opal
{ itemID = "30593", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Iridescent Fire Opal
{ itemID = "30602", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Jagged Chrysoprase
{ itemID = "30606", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Lambent Chrysophrase
{ itemID = "30547", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Luminous Fire Opal
{ itemID = "30548", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Polished Chrysoprase
{ itemID = "30553", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Pristine Fire Opal
{ itemID = "31118", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Pulsing Amethyst
{ itemID = "30608", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Radiant Chrysoprase
{ itemID = "30563", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Regal Tanzanite
{ itemID = "30604", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Resplendent Fire Opal
{ itemID = "30603", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Royal Tanzanite
{ itemID = "30586", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Seer's Chrysoprase
{ itemID = "30549", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Shifting Tanzanite
{ itemID = "30564", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Shining Fire Opal
{ itemID = "31117", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Soothing Amethyst
{ itemID = "30546", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Sovereign Tanzanite
{ itemID = "30607", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Splendid Fire Opal
{ itemID = "30554", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Stalwart Fire Opal
{ itemID = "30592", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Steady Chrysoprase
{ itemID = "30550", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Sundered Chrysoprase
{ itemID = "30583", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Timeless Chrysoprase
{ itemID = "30605", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Vivid Chrysoprase
	
{ itemID = "30552", red = 1, yellow = 0, blue = 1, meta = 0 },  -- Blessed Tanzanite
{ itemID = "30589", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Dazzling Chrysoprase
{ itemID = "30582", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Deadly Fire Opal
{ itemID = "30581", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Durable Fire Opal
{ itemID = "30591", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Empowered Fire Opal
{ itemID = "30590", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Enduring Chrysoprase
{ itemID = "30572", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Imperial Tanzanite
{ itemID = "30573", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Mysterious Fire Opal
{ itemID = "30575", red = 1, yellow = 1, blue = 0, meta = 0 },  -- Nimble Fire Opal
{ itemID = "30588", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Potent Fire Opal
{ itemID = "30560", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Rune Covered Chrysoprase
-- (patch 2.1.1)
{ itemID = "31863", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Nightseye
{ itemID = "31861", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Dawnstone
{ itemID = "31865", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Nightseye
{ itemID = "31867", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Noble Topaz
{ itemID = "31868", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Noble Topaz
{ itemID = "32836", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Purified Shadow Pearl
{ itemID = "32833", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Purified Jaggal Pearl
{ itemID = "32409", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Relentless Earthstorm Diamond
{ itemID = "32410", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Thundering Skyfire Diamond	
-- (patch 2.1.3)
{ itemID = "24053", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Mystic Dawnstone
{ itemID = "32634", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Unstable Amethyst
{ itemID = "32635", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Unstable Peridot
{ itemID = "32636", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Unstable Sapphire
{ itemID = "32637", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Unstable Citrine	
{ itemID = "32638", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Unstable Topaz
{ itemID = "32639", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Unstable Talasite
{ itemID = "32640", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Potent Unstable Diamond	
{ itemID = "32641", red = 0, yellow = 0, blue = 0, meta = 1 },	-- Imbued Unstable Diamond
-- Epic gem drops in Black Temple/Hyjal
{ itemID = "32193", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bold Crimson Spinel
{ itemID = "32194", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Delicate Crimson Spinel
{ itemID = "32195", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Teardrop Crimson Spinel
{ itemID = "35489", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Teardrop Crimson Spinel
{ itemID = "32196", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Runed Crimson Spinel
{ itemID = "35488", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Runed Crimson Spinel
{ itemID = "32197", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bright Crimson Spinel
{ itemID = "35487", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Bright Crimson Spinel
{ itemID = "32198", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Subtle Crimson Spinel
{ itemID = "32199", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Flashing Crimson Spinel
{ itemID = "32200", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Solid Empyrean Sapphire
{ itemID = "32201", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Sparkling Empyrean Sapphire
{ itemID = "32202", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Lustrous Empyrean Sapphire
{ itemID = "32203", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Stormy Empyrean Sapphire
{ itemID = "32204", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Brilliant Lionseye
{ itemID = "32205", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Smooth Lionseye
{ itemID = "32206", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Rigid Lionseye
{ itemID = "32207", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Gleaming Lionseye
{ itemID = "32208", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Thick Lionseye
{ itemID = "32209", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Mystic Lionseye
{ itemID = "32210", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Lionseye
{ itemID = "32211", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Sovereign Shadowsong Amethyst
{ itemID = "32212", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Shifting Shadowsong Amethyst
{ itemID = "32213", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Shadowsong Amethyst
{ itemID = "32214", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Shadowsong Amethyst
{ itemID = "32215", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Glowing Shadowsong Amethyst
{ itemID = "32216", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Royal Shadowsong Amethyst
{ itemID = "32217", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Inscribed Pyrestone
{ itemID = "32218", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Potent Pyrestone
{ itemID = "32219", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Luminous Pyrestone
{ itemID = "32220", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Glinting Pyrestone
{ itemID = "32221", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Pyrestone
{ itemID = "32222", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Pyrestone
{ itemID = "32223", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Enduring Seaspray Emerald
{ itemID = "32224", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Radiant Seaspray Emerald
{ itemID = "32225", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Dazzling Seaspray Emerald
{ itemID = "32226", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Jagged Seaspray Emerald
	-- (patch 2.2.0)
{ itemID = "33131", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Crimson Sun
{ itemID = "33133", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Don Julio's Heart
{ itemID = "33134", red = 1, yellow = 0, blue = 0, meta = 0 },	-- Kailee's Rose
{ itemID = "33135", red = 0, yellow = 0, blue = 1, meta = 0 },	-- Falling Star
{ itemID = "33140", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Blood of Ember
{ itemID = "33143", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Stone of Blades
{ itemID = "33144", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Facet of Eternity
{ itemID = "33782", red = 0, yellow = 1, blue = 1, meta = 0 },	-- Steady Talasite
	-- (patch 2.2.2)
{ itemID = "31862", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Balanced Shadow Draenite
{ itemID = "31860", red = 0, yellow = 1, blue = 0, meta = 0 },	-- Great Golden Draenite
{ itemID = "31864", red = 1, yellow = 0, blue = 1, meta = 0 },	-- Infused Shadow Draenite
{ itemID = "31866", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Veiled Flame Spessarite
{ itemID = "31869", red = 1, yellow = 1, blue = 0, meta = 0 },	-- Wicked Flame Spessarite
-- (patch 2.3.0)
{ itemID = "34220", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Chaotic Skyfire Diamond
{ itemID = "34256", red = 0, yellow = 0, blue = 1, meta = 0 },	  -- Charmed Amani Jewel
-- (patch 2.4.0)
{ itemID = "35503", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Ember Skyfire Diamond
{ itemID = "35501", red = 0, yellow = 0, blue = 0, meta = 1 }, 	-- Eternal Earthstorm Diamond
{ itemID = "35707", red = 1, yellow = 0, blue = 1, meta = 0 }, 	-- Regal Nightseye
{ itemID = "34831", red = 0, yellow = 0, blue = 1, meta = 0 }, 	-- Eye of the Sea
{ itemID = "35758", red = 0, yellow = 1, blue = 1, meta = 0 }, 	-- Steady Seaspray Emerald
{ itemID = "35759", red = 0, yellow = 1, blue = 1, meta = 0 }, 	-- Forceful Seaspray Emerald
{ itemID = "35760", red = 1, yellow = 1, blue = 0, meta = 0 }, 	-- Reckless Pyrestone
{ itemID = "35761", red = 0, yellow = 1, blue = 0, meta = 0 } 	-- Quick Lionseye
};


--(xarthasskrillexx): table for metagems, their requirements, and their effects (only stat effects are counted, not things like procs (see: Brutal Earthstorm Diamond)).
--Using the gem itemID as the key for table of stats (as opposed to having "itemID" as key and gemID as value for that key, as above) is probably faster. Maybe. Who knows.
BonusScanner_MetaGems = { 
-- Crafted Rare Meta Gems
["25897"] = { -- Bracing Earthstorm Diamond
minRed = 0,
minYellow = 0,
minBlue = 0,
specReq = 1, --more Red gems than Blue gems
effs = { HEAL = 26, DMG = 9, THREATREDUCTION = 2 }
},
["25899"] = { -- Brutal Earthstorm Diamond
minRed = 2,
minYellow = 2,
minBlue = 2,
specReq = 0,
effs = { DMGWPN = 3 }
}, 
["25890"] = { -- Destructive Skyfire Diamond
minRed = 2,
minYellow = 2,
minBlue = 2,
specReq = 0,
effs = { SPELLCRIT = 14, SPELLREFLECT = 1 }
},
["25895"] = { -- Enigmatic Skyfire Diamond
minRed = 0,
minYellow = 0,
minBlue = 0,
specReq = 2, --more Red gems than Yellow gems
effs = { CRIT = 12, SNARERESIST = 5 }
},
["25901"] = { -- Insightful Earthstorm Diamond
minRed = 2,
minYellow = 2,
minBlue = 2,
specReq = 0,
effs = { INT = 12 }
},
["25893"] = { -- Mystical Skyfire Diamond
minRed = 0,
minYellow = 0,
minBlue = 0,
specReq = 3, --more Blue gems than Yellow gems
effs = {}
},
["25896"] = { -- Powerful Earthstorm Diamond
minRed = 0,
minYellow = 0,
minBlue = 3,
specReq = 0,
effs = { STA = 18, STUNRESIST = 5 }
},
["25894"] = { -- Swift Skyfire Diamond
minRed = 1,
minYellow = 2,
minBlue = 0,
specReq = 0,
effs = { ATTACKPOWER = 24 }
},
["25898"] = { -- Tenacious Earthstorm Diamond
minRed = 0,
minYellow = 0,
minBlue = 5,
specReq = 0,
effs = { DEFENSE = 12 }
},

-- PvP Purchased Rare Meta Gems (Terrokar Spirit Towers)
["28557"] = { -- Swift Starfire Diamond
minRed = 1,
minYellow = 2,
minBlue = 0,
specReq = 0,
effs = { DMG = 12 }
},
["28556"] = { -- Swift Windfire Diamond
minRed = 1,
minYellow = 2,
minBlue = 0,
specReq = 0,
effs = { ATTACKPOWER = 20 }
},

-- Patch 2.1.1
["32409"] = { -- Relentless Earthstorm Diamond
minRed = 2,
minYellow = 2,
minBlue = 2,
specReq = 0,
effs = { AGI = 12, INCRCRITDMG = 3 }
},
["32410"] = { -- Thundering Skyfire Diamond
minRed = 2,
minYellow = 2,
minBlue = 2,
specReq = 0,
effs = {}
},
-- Patch 2.1.3
["32640"] = { -- Potent Unstable Diamond
minRed = 0,
minYellow = 0,
minBlue = 0,
specReq = 3, --more Blue gems than Yellow gems
effs = { ATTACKPOWER = 24, STUNRESIST = 5 }
},
["32641"] = { -- Imbued Unstable Diamond
minRed = 0,
minYellow = 3,
minBlue = 0,
specReq = 0,
effs = { DMG = 14, STURNRESIST = 5 }
},

-- Patch 2.3.0
["34220"] = { -- Chaotic Skyfire Diamond
minRed = 0,
minYellow = 0,
minBlue = 2,
specReq = 0,
effs = { SPELLCRIT = 12, INCRCRITDMG = 3 }
},

-- Patch 2.4.0
["35503"] = { -- Ember Skyfire Diamond
minRed = 3,
minYellow = 0,
minBlue = 0,
specReq = 0,
effs = { DMG = 14, PERCINT = 2 }
},
["35501"] = { -- Eternal Earthstorm Diamond
minRed = 0,
minYellow = 1,
minBlue = 2,
specReq = 0,
effs = { DEFENSE = 12, PERCBLOCKVALUE = 10 }
},
}