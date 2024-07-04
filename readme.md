# TvC Custom Music Setup Guide

**Note:** This code was not made by me. It was recovered from a [SRK forum post made by Keits and code provided by MGF](https://archive.supercombo.gg/t/id-like-to-replace-the-music-on-the-tvc-disc-anyone-want-to-help-figure-this-out/91217/116?page=5).

## Step 1: Initial Setup

Inside the zip file, you'll find two folders: `Riivolution` and `Tutorial 2nd`.

### Setting up the Riivolution folder:

1. Navigate to your PC's `Documents` folder.
2. Follow this path: `Documents\Dolphin Emulator\Load`.
3. Place the contents of the zip file's `Riivolution` folder inside `Load`. The path should look like this: `Documents\Dolphin Emulator\Load\Riivolution`.

The structure inside should look like this:

```
Riivolution
├── config (Folder)
├── boot.elf
├── icon.png
├── meta.xml
├── readme.txt
└── TVCUAS.xml
```
![dolphin 2](https://github.com/cce2955/TvCDolphinRiivolution/assets/44739551/e5e2ea7d-e532-463a-8799-ec422222b5f4)


For this folder, you're done.

4. Next, go up one folder to `Dolphin Emulator\Load`.
5. Inside here, create a new folder called `TVCUAS`. Once that folder is made, you're done with the setup.

![dolphin 1](https://github.com/cce2955/TvCDolphinRiivolution/assets/44739551/bd45d2a9-46b1-41e2-9958-d36d650a756d)


## Step 2: Setting up Music

### Using the Tutorial 2nd folder:

1. Navigate to the `Tutorial 2nd` folder.
2. For this demonstration, we'll use "13 - Floating Fort.mp3" (from Godhand, you need to play it) as an example, but you can use whatever file you want.
3. Navigate to `BCSM-GUIv1.5`.
4. Inside, open `BCSM-GUI.exe`, click on "Add file", then "Add to Queue", then "Convert to BRSTM". It will output your file in the library under `Tutorial 2nd\BCSM-GUIv1.5\library`. In our example, this is "13 - Floating Fort.brstm".
5. Move this file from `Tutorial 2nd\BCSM-GUIv1.5\library` to `Tutorial 2nd\brstm`. 
6. To make your life easier in the future, rename it to something simple. For instance, "13 - Floating Fort.brstm" becomes "fort.brstm".

### Running the Start.bat Script:

1. Return to the `Tutorial 2nd` folder and click on `Start.bat`.
2. Any `.brstm` files in the `brstm` folder will be detected. In our example, we want `fort.brstm`, so type `fort` without the `.brstm` extension. 
3. Press enter. It'll process for a bit, then ask which stage you're replacing. In this example, we'll replace the training stage (no. 15). 
4. It'll generate a `.ssd` file, in this case, `stage_17.ssd` (training stage).
5. Take this file (as well as the generated file `bgm.srt`), go back to `Documents\Dolphin Emulator\Load\TVCUAS`, and drop it off there.

## Step 3: Starting the Game

1. Go to Dolphin, right-click on TvC, choose "Start with Riivolution patches".
2. Open `Riivolution XML`, open `TvCUAS.xml`.
3. Ensure that custom music is enabled.
4. Start the game.

If done correctly you have custom music running.
## FAQ

### 1. Why are my .brstm files making a horrible scratching sound?

If your .brstm files are all under 50KB, they can't hold any data, resulting in a horrible scratching sound. This can happen if your music source didn't label the "length" variable in the file properties. Make sure to assign a length to your files, and the .brstm files should load normally.

### 2. Why is the sound staticy?

Ensure that you transfer the `bgm.srt` file from the `Tutorial 2nd\BCSM-GUIv1.5\library` folder to the `Documents\Dolphin Emulator\Load\TVCUAS` folder. This file is necessary for proper playback of your custom music.

### 3. How do I loop a track?

To loop a track, the program checks for samples to determine the loop start and end points. Here's how to find and set these points using Audacity:

1. **Open your audio file in Audacity.**
2. **Select the portion you want to loop.** Click and drag to highlight the section of the track you want to loop.
3. **Find the sample points.** With the section highlighted, look at the bottom of the Audacity window. You'll see the start and end points in samples. Note these numbers down.
4. **Set loop points.** Go to `Edit` > `Labels` > `Add Label at Selection`. This will create a label track. Double-click the new label to edit it, and enter the sample numbers for the start and end points.
5. **Export the looped section.** Once you have your loop points set, export the file as a .wav or .mp3.
6. **Convert to BRSTM.** Use the BCSM-GUI tool to convert your file to .brstm, and the tool will recognize the loop points during the conversion.

By following these steps, you'll ensure that your custom track loops seamlessly in the game.
