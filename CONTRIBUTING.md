These guidelines are to help lay out the format and roadmap of Pokémon
LDS. Following these will help relieve stress on the developer's part
and make sure your contributions are helpful.

# Types of Contributions

## This project is looking for the following types of contributions

* Bug fixes and Reports (See the [Reporting a Bug](#reporting-a-bug) section)
* Spelling errors
* Sprite Design (Mostly Trainer and Overworld)
* Tileset Creation
* Music ported to the Crystal audio engine (Preferably Hymns, see [Here](https://www.lds.org/music/library/hymns?lang=eng))
* Story Material
* Related game concepts
* Feature backporting from other hacks
* Map Creation
* Scripting
* Updating Language
* Increasing Free space by making more efficent code
* Removal of unused assets
* PokéGear improvements
* Debugging
* An IRC channel
* Anything you think could be useful (Open an enhancement request first)

## This project is NOT looking for the following contributions

* Things that have already been done in the [TODO](https://github.com/hyperdriveguy/pokelds/blob/master/TODO.md)
* Modifications to the TODO list (Won't always reject, it's just a very
  low priority. Use the issues page instead.)
* Opening issues asking for how to do something in the game
* Things that make a Travis-CI test fail (eg. a real buggy contribution)
    * If it doesn't pass Travis-CI, I will still test the pull request manually.

# Behavioral Expectations

See the [Code of Conduct](https://github.com/hyperdriveguy/pokelds/blob/master/CODE_OF_CONDUCT.md)

# Code Style

* Hex for numbers is preferred in most places
    * Exceptions are the files which are edited by Crowdmap
    * Audio files do not have to use hex either
* Code should be well commented to explain what it does
* Avoid binary blobs
* Avoid regressions
* Add yourself to the [CREDITS.md](https://github.com/hyperdriveguy/pokelds/blob/master/CREDITS.md) file

## If You Do Not Want Your Changes to Assume the MIT License

### Code

If you have added a whole file or more than 200 lines of code:

```assembly
; Made by <your name>
; Changes licensed under <Custom license>
; Custom license text if applicable
```

This is not nessecary for smaller contributions (<200 LoC)

### All Other Changes

Follow the instructions in [CREDITS.md](https://github.com/hyperdriveguy/pokelds/blob/master/CREDITS.md)

# Submitting a Contribution

## For something that is more than a small fix

1. Create your own fork of the code
2. Do the changes in your fork
3. Create a Pull Request on Github
    * Make sure to follow the [Code Style](#code-style)
    * By default, your changes will assume the MIT license. See the
      [License](https://github.com/hyperdriveguy/pokelds/blob/master/LICENSE.md) for more details.
    * If you don't want them to, follow the instructions under the
      [Code Style](#code-style)
    * Make sure to follow the behavioral expectations
    * Make sure it passes the Travis-CI test
4. Pull Request will be accepted or rejected accordingly

## For small one or two line fixes

1. Go the the issues page
2. Open an issue using the following format
    * Type of issue
    * path/to/file.asm
    * line in file where the issue is
    
## Material Submissions

1. Create your own fork of the code
2. Add your content into the "material" folder
3. Add your content and license for the content in [CREDITS.md](https://github.com/hyperdriveguy/pokelds/blob/master/CREDITS.md)
    * Material __must__ be under a license where it can be used in the
      project, or permission from the copyright holder must be given
    * A Creative Commons license (Other than the "No Derivative") is
      preferable
4. Create a Pull Request on Github 
5. Pull Request will be accepted or rejected accordingly
    
# Reporting a Bug

Open an issue on the Issues page answering the following questions:

1. Are you using the latest version of the game? If not, specify a specific commit.
2. What emulator were you using, or was it on real hardware?
3. What did you do?
4. What did you expect to see?
5. What did you see instead?
6. Do you have a screenshot?
7. Can you reproduce it?

Make sure to use the "bug" label on your issue.

# Suggesting a Feature or Enhancement

The goal of Pokémon LDS is to create an amazing game full of excitement,
challenges, puzzles, and of course, references to Utah, LDS culture, and
the Book of Mormon (Along with other scripture), while keeping some of
the Pokémon concepts (eg. battles) the same.

Keep this in mind when suggesting a feature or enhancement.

To suggest a feature:

1. Check if your idea is already in the [TODO](https://github.com/hyperdriveguy/pokelds/blob/master/TODO.md)
2. Go to the Issues page and open an issue
3. Describe your idea in clear language
4. Use the "enhancement" label on your issue

# Code Review Process

First and foremost, it must have passed the Travis-CI build. Then a
[Core Developer](#core-developers) will look at the pull request. If it
follows the code style and is desirable, it will be merged accordingly.

# Community

Sadly, there currently is no community for this project as of yet. If
you have made a community, open an issue so I can link to it here.

# Core Developers

Currently only consisting of [@hyperdriveguy](https://github.com/hyperdriveguy)

If you wish to become a core developer, email [@hyperdriveguy](https://github.com/hyperdriveguy)
with the following (or something like it):

> Hello,
>
> I am interested in becoming a core developer for Pokémon LDS!
> I can help with (Code, Maps, Music, etc. Whatever you specialize in.)
> I have also read the Code of Conduct and agree to it's terms.
> 
> -- Github User Name or What you wish to be called

You may be accepted depending on your activity with the project.
