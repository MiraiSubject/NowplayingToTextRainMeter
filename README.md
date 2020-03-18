# NowplayingToTextRainMeter

Totally uninspirational name, but it's functional!

--------

This is a Rainmeter "widget" that writes the Now Playing information to a `nowplaying.txt` file and its album art to `art.jpg`.

## Requirements

- Windows, at least a system that runs Rainmeter skins
- [PowerShell 7](https://github.com/PowerShell/PowerShell/releases) (for UTF-8 without BOM files)

## Why?

Snaz & Snip cause a lot of weird and unstable behaviour with iTunes, requiring even a system restore to recover.
Examples are: iTunes having a stuck process in task manager, unable to be killed, requiring a log out and log in and iTunes just not booting up at all anymore!

Rainmeter is somehow really stable with iTunes' scripting interface and is always running on my system anyway for my actual widgets. 

This makes it super useful for me to use during my live streams.

## How does this work?

There's an invisible meter with just some text that is actually hidden. I only unhide this when I want to read values directly. Rainmeter also requires at least one meter in a skin. Everything else is just scripting the NowPlaying output to PowerShell so it outputs to files that OBS can read.

This also means that effectively all the players supported by the [NowPlaying](https://docs.rainmeter.net/manual/measures/nowplaying/) plugin are supported! Just change the player name and it should work? I only use iTunes, so idek. 

When you enable the skin, nothing will show up, but files get written in the Skin's directory as `art.jpg` and `nowplaying.txt` on the next player update (so track skip/smth like that). You can use these files in OBS or any program of choice and the files also get updated with every new song. 