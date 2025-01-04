# ZGloom

A re-implementation of [Amiga FPS Gloom](https://en.wikipedia.org/wiki/Gloom_(video_game)), including support for Zombie Massacre.

# Screenshots

![font.png](screenshots/font.png)
![deluxe2.png](screenshots/deluxe2.png)
![deluxe3.png](screenshots/deluxe3.png)
![organs.png](screenshots/organs.png)

# Instructions

## Windows

There is a pre-compiled inside the [bin](bin) folder or you can use one of the [releases](https://github.com/Swizpig/ZGloom/releases). It needs the VS2013 runtime.

## Linux 

1. Install libSDL2, libSDL2_mixer and [libXMP](https://github.com/cmatsuoka/libxmp).
2. Compile with `make`.

### Mint 21.3 2025 info

Mint 21.3 required following library installations compilation to proceed:

*sudo apt update*

1)  *sudo apt install build-essential cmake libsdl2-dev libsdl2-mixer-dev git*
2)  *sudo apt install libxmp-dev*

When compiliation has finished, download the game from: https://github.com/earok/GloomAmiga/archive/master.zip  Unzip content and copy just compiled *ZGloom* to root of opened game package directory. 

Give running rights: *chmod u+x ZGloom*

Start game: *ZGloom*

### Configuration 2025 info

Menu selectable full screen graphics are bad. Instead you can compile default play window to be bigger.
In *config.cpp* change default window to be bigger, for example:

	windowwidth = 1023;
    windowheight = 818;

# How to play

Gloom was made freely available by its developers [here](https://github.com/earok/GloomAmiga/archive/master.zip). Download, unzip and move the ZGloom binary inside the uncompressed directory before run it. 

### 2025 Play Info

Use menu to active *autofire*, it will make playing much more easier than with original Amiga Gloom Deluxe version

# Default Controls

Cursors, left alt to strafe, left ctrl to fire. F1 skips level. F12 toggles fullscreen. PrintScreen dumps a bitmap. Escape pauses the action and shows the menu.

### 2025 Control Info

Game controller support is good; *Thrustmaster Dual Analog 4* supported both joysticks for movements (including
sidestepping)

# In-game music

ZGloom can now add in-game music using any module that XMP can play. Put the mods in the sfxs folder and add "song_blitz.mod" or whatever the module name is to the script. Multiple song_ commands are allowed, allowing per-level music.

# TODO

* Backend of the renderer is mostly mine, and is flaky. There's Z-fighting that doesn't exist in the original, for instance
* Sound is deafening on occasion, need variable volume playback and priority system
* Player rotation acceleration
* Incomplete HUD and infinite lives currently
* Very basic in-game menu. Much more stuff needs to be configurable
* No defender sub-game
* LibXMP's MED playback isn't great on some tunes

### 2025 Todo Info
* Going to try use config file to setup default play screen window during startup
(now one must compile this change)


# License

Dunno. [The Gloom source release](https://github.com/earok/GloomAmiga) says only the .s and .bb2 files are open source, but the Gloom executable bakes in some maths lookup tables (but then, they are generated by the .bb2 files), bullet and sparks graphics, and 
the title screen for Classic Gloom. I probably won't add the latter and just display the Black Magic image, or something.

Uses LibXMP for MED playback
http://xmp.sourceforge.net/

Uses SDL2 and SDL2 mixer
https://www.libsdl.org/

DeCrunchmania C code by Robert Leffman, licence unknown
http://aminet.net/package/util/pack/decrunchmania_os4
