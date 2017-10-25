## Bugs

- [ ] The Town Map still uses Johto's layout, rather than the new region's layout.
    * Graphics show Town Map correctly, but more engine fixes need to happen for every town's name to be displayed. This is an ongoing effort.
- [x] Burn/Poison/Paralyze don't improve catch rate. (Fixed)
- [ ] Experience underflow at level 1.
    * Need to still double check that it actually still exists
- [x] HP bar does not lower at the same speed for high HP. (Fixed)
See the [Issues](issues/) page for things not listed here.
As far as I know, it also inherits all the bugs not listed here from vanilla Pokémon Crystal.

# Specific to Pokémon LDS

## Maps

### All maps

- [ ] Replace Johto and Kanto maps
- [ ] Remove hardcoded references to Johto and Kanto
- [ ] Church meetinghouses
- [ ] Rework scripts and text

### Bountiful Town

- [x] Remove Rival by the lab

### Route 101

- [x] Add House for errand completion

### Pleasant Grove

- [ ] Remove Ilex Forest Scripts
- [ ] Add trainers
- [ ] Remove Headbutt guy

### Route 102

- [ ] Rebase on Route 31

## Story - Warning! Spoilers!

- [ ] Errand from the local Professor/Reworked Character
- [x] Make Bishop in Bountiful Town
- [ ] Replace Rival
- [ ] Book of Mormon people mixed with modern day people
- [ ] Story involving Korihor (See Alma Chapter 30)
- [ ] Gadianton Robbers (Replaces Team Rocket)
- [ ] Rescue kidnapped missionaries
- [ ] Leaders to battle in each city (Replacing Gym Leaders, may replace with an Area authority or Book of Mormon Prophet)
- [ ] Ideas and characters inspired by "Saturday's Warrior", "Johnny Lingo", and other
- [ ] Final battles on Mt. Zion (Replacing the Elite Four and Champion)
- [ ] Post Story? (Mission Call)
- [ ] Better method to obtain money?

See "materials" folder for more of the concepts.

## Battle Mechanics

- [ ] Make HMs more powerful so that they are desirable
- [ ] Non-canon Pokémon, Types, and moves if they make sense

## Items

- [ ] Remove old story based key items that are not needed for the new story
- [ ] New Key Items (as needed)
- [ ] Book Of Mormon item (Key item?)
- [ ] Trax pass (Replaces Magnet Train Pass, maybe consumable rather than being a key item)

## Engine

- [ ] New Radio stations
- [ ] Mormon Channel
- [ ] News station
- [ ] Make Pokemarts and Pokecenters close on Sundays (Pokecenters only take emergencies, like whiteouts)
- [ ] Populate Church Meetinghouses on Sundays and Wednesdays, otherwise they're locked
- [ ] Show walking animation faster when running
- [ ] Add Sister, Deacon, Teacher, Priest, High Priest, Beehive, Miamaid, Laurel, Nephite, Lamanite, Ammonite, and Apostate trainer classes
- [ ] Added Elder trainer class (Broken)
- [x] Get rid of Nuzlocke mode

## Music (Much help needed, improvements are welcome)

- [ ] "I Hope They Call Me On a Mission" for the intro music
    * Channels are out of sync, probably needs to be completely redone
- [ ] "Called to Serve" for Missionary Trainer encounter
- [ ] "High on the Mountain Top" for Mt. Zion theme
- [ ] "True to the Faith" for the ending theme
- [ ] "I Love to See the Temple" for Temple Square
- [x] "Love at Home" for Bountiful Town
- [ ] "The Spirit of God" for the final road to Mt. Zion
- [ ] "For the Strength of the Hills" for route music
- [ ] "How Firm a Foundation" for route music
- [x] "Book of Mormon Stories" for Zarahemla
- [ ] "Redeemer of Israel" for title screen
	* Basic groundwork done
- [ ] Port other popular Hymns to the audio engine

## Graphics

- [ ] Book of Mormon Time like, Temple Square, meetinghouse, and desert tilesets
- [ ] Make new Reworked Professor Character, Nephite, Lamanite, MissionaryM, and MissionaryF overworld sprites
- [ ] Make Sister, Deacon, Teacher, Priest, High Priest, Beehive, Miamaid, Laurel, Nephite, Lamanite, Ammonite, and Apostate trainer sprites
- [x] Made Elder overworld and trainer sprites
- [ ] Custom title screen
    * Graphics changed, need a new opening movie, and other engine changes

# Feature backport from other hacks (Like Polished Crystal) - These aren't as high priority, but may be easier to implement.

## Overworld Mechanics

- [x] Ability to hold B to use Running Shoes
- [ ] Option to always use Running Shoes.
- [ ] Make unlimited-use TMs.
- [ ] Make a continuous Repel system.
- [ ] Make eggs hatch at level 1. (And fix experience underflow bug)
- [ ] Make trees randomly give 1, 2, or 3 Berries.
- [ ] Ability to surf at Bicycle/Running Shoes speed.
- [ ] Make a new maximum of $9,999,999 money and 50,000 coins (or just eliminate the coin case).
- [ ] New maximum of 30 items and 16 Balls in your bag pocket.
- [ ] Make Bill (Or some new PC guy) call to switch boxes when one is full.

## Battle Mechanics

- [x] A Physical/Special/Status split.
- [ ] Add Abilities
    * Last priority
- [x] Natures
- [x] EV and IV system
- [ ] Gain experience from catching Pokémon.
- [x] Use money loss formula from Gen V.
- [ ] Make type-enhancing items raise by 20%, not 10%.
- [ ] Make critical hits do 150% damage, not 200%, and make them more likely.
- [ ] Make electric-type Pokémon are immune to paralysis, even from Tri Attack.
- [ ] Make ice-type Pokémon are immune to freezing, even from Tri Attack.
- [ ] Make fire-type Pokémon are immune to burns, even from Tri Attack.
- [ ] Make steel-type Pokémon are immune to poisoning.
- [ ] Make Roar, Whirlwind, and Struggle unaffected by accuracy or evasion, like Swift.
- [ ] Make Growth raise Attack and Special Attack, by two stages in sunlight.
- [ ] Make wild Pokémon have more common held items (50% chance for a common one and 5% for a rare one). Also make it so giving an Amulet Coin to your lead Pokémon increases this to 60% and 10%.
- [ ] Make X Accuracy boost accuracy, not ignore accuracy checks entirely.
- [ ] Port critical captures from Prism
- [ ] Allow evolution during battle

## Difficulty

- [ ] Make Set battle style default.

## Graphics

- [x] New Poké Ball sprite
- [x] Make color-coded starter Poké Balls.
- [ ] Make item balls for TMs are blue.

## Other

- [ ] Make fast text default.
- [ ] Make stereo sound default.
- [ ] Make move stats include type, category, power, and accuracy.
- [ ] Make new Berry names
- [ ] No more all caps words (unless yelling)
- [ ] Wonder trades
- [x] Polished Crystal Utilities
