# ScrubBuster
ScrubBuster is an addon for World of Warcraft: The Burning Crusade version 2.4.3.
It displays the total stats of the currently inspected player in the inspect screen ([screenshot](http://i.imgur.com/JUCNKSr.png)).
These stats are not normally easily available, so the addon builds them up from the character's
known base stats according to the game's stat logic, and combines them with bonuses from items
and talents.

This, however, means that the stats cannot be 100% accurate. They are a result of convoluted mathing
by the addon, so there is a small margin of error caused by things like floating point errors,
formula inaccuracies, and flat out flaws. The stats are like 99% accurate, though, I promise!

The addon does not do all of this alone: it depends on (a modified version of) BonusScanner for
scanning the target's equipment tooltips for bonuses. A modified version of BonusScanner is included
in the download, and must be installed for the addon to work properly.

# Installation
[Download](https://github.com/brndd/scrubbuster/raw/master/releases/ScrubBuster_v0.3.7z) ScrubBuster, and place the archive's contents in the Interface\AddOns\ folder, so that two new
folders appear in the AddOns directory: BonusScanner and ScrubBuster.

Launch WoW, and in the character selection screen click on AddOns in the bottom left corner of the screen. Tick both BonusScanner and ScrubBuster.

ScrubBuster has no settings to configure. You can but don't have to configure BonusScanner's settings by typing /bscan in the chat.

# Usage
ScrubBuster automatically displays the stats of any player you inspect just like stats in your own
Charater Sheet are displayed.

There are a couple of differences to the character sheet, stemming from limitations to what the addon can "see" about the inspect. Warrior stances, ranged weapon ammunition and quivers cannot be automatically detected, and Druid form detection would require buffdetection and would be inconvenient anyway.

- For Warriors and Druids, there is a stance dropdown selection at the top of the inspect window.
- For Warriors, Rogues and Hunters there is a ammo/quiver selection which you can access by clicking on the ammo slot. The addon automatically preselects appropriate ammo and quiver without you having to do anything, though: the quiver selection selects the best (reasonable easily) available quiver for the player's level, and the ammo selection selects the best vendor-bought ammunition available to the player's level. For level 70 players, if their weapon itemlevel is above 125 the addon will default to the best available ammunition (Timeless Arrow/Shell) which require The Scale of the Sands reputation to get, otherwise it will use Cenarion Expedition or Honor Hold/Thrallmar reputation ammunition.
- The tooltip for hit rating (melee, ranged, and spell) will also display the target's total hit rating as adjusted by talents etc. to make it easy to see if a person is hitcapped. This only includes the Draenei racial for Draenei players; the party member portion is not included (because it's a buff). You will have to factor that in manually if it's applicable.

# Limitations and known issues
- Buffs/auras will probably never be implemented. As far as I'm aware, it is virtually impossible for an addon to accurately detect buff effects.
- Talents and druid forms that increase armour contribution from items incorrectly apply to armour enchantments too. As far as I'm aware this is impossible to properly fix.
- If you're playing on private servers, there may be some inconsistencies due to the server having incorrect configuration. This is probably an issue with the server, not the addon, but if you come across stuff like this let me know anyway.
- **Importantly**, because the addon works partially by scanning tooltips which depend on localisation, non-English localisations are not properly supported and probably never will be. Use the English client.
