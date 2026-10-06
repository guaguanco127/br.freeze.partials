# Ableton Max for Live device: br.freeze.partials.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.partials.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze.partials](https://github.com/guaguanco127/br.freeze.partials)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's New in 1.1](#whats-new-in-11)  
[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[sigmund~](#sigmund)  

## What's New in 1.1

- **Stereo.** Each side has its own analysis and its own 16 voices, so a stereo source freezes a slightly different chord left and right. For a mono source, connect it to both inputs.
- **Crossfade (X-Fade).** Up to 10 seconds: each Freeze fades the new chord in while the old one fades out. At 0 it glides quickly, as in 1.0. A Freeze during a crossfade is ignored, so a fade always finishes.
- **Detect + Sensitivity.** Freezes automatically on every attack you play (the same attack detector as [br.freeze](https://github.com/guaguanco127/br.freeze)).
- **Dry/Wet**, equal-power, so the middle does not dip.
- **Insert / Gate.** While switched off, Insert passes the dry sound and Gate is silent.
- **Switching it on freezes right away.**
- **Levels** (the level of each partial) now use a squared curve, so you can pull partials down much further (half the bar = -12 dB), and respond in 50 ms instead of 1 second.
- **New: Max for Live device.**
- The voice engine is now its own file (br.freeze.partials.engine.1.1.maxpat), used once per side. Copy all of the files.

## <a name="About"></a>About

br.freeze.partials listens to a stereo sound, finds the strongest partials (the individual sine components) on each side with sigmund~, and on each Freeze holds them as a bank of up to 16 sine voices per side, sorted low to high. Each voice has its own gentle amplitude wobble and a Buchla-style anti-aliased wavefolder, so a frozen chord can stay pure or grow harmonics with Drive. A crossfade can morph slowly from one frozen chord to the next, an attack detector can freeze on every note you play, and a level for each partial lets you shape the chord. Partials quieter than the Threshold are ignored, and turning it off stops all processing (no CPU). Built for live input: trumpet, voice, anything with a pitch.

### Controls

**Freeze.Partials (on/off):** The switch at the top left. Off fades the output, releases every voice and stops all processing, including sigmund~, so it uses no CPU. On starts listening again and freezes right away. The default is on.

**Freeze:** Holds the partials sounding right now. Each partial gets its own voice, lowest partial first. A Freeze during a crossfade is ignored.

**Thresh:** -100 to 0 dB. Partials quieter than this are ignored at the moment of Freeze, so they never get a voice. Raise it for fewer, stronger partials. The default is -60 dB.

**Detect:** On: every attack you play freezes automatically. A held note does not keep re-freezing, and each freeze waits a few milliseconds so it holds the attack itself. The default is off.

**Sens:** 0 to 1. How sudden a jump in level counts as an attack: 0 = only strong attacks, 1 = softer attacks too. The default is 0.5.

**Insert / Gate:** What you hear while the effect is switched off. Insert passes the dry sound (for use on a track); Gate is silent (for use on a send/return). The default is Gate.

**Pitch:** -36 to 36 semitones. Transposes the whole frozen chord. The default is 0.

**Hi-Pass:** 20 to 20000 Hz. A highpass on the input, before the analysis, so rumble and handling noise don't become partials. The default is 40 Hz.

**Lo-Pass:** 100 to 20000 Hz. A lowpass on the output, to tame bright folded voices. The default is 20000 Hz (open). A fixed 30 Hz highpass on the output also removes any sub-bass.

**Drive:** 1 to 16. The amount of Buchla-style sine folding on every voice: 1 is a pure sine, higher values add harmonics. High partials are folded less, so the top end stays smooth. The default is 1.

**X-Fade:** 0 to 10 seconds. At 0, a new Freeze glides the same voices to the new chord in about 20 ms. Above 0, the new chord fades in on a second set of voices while the old chord fades out over this time. The default is 0.

**Dry/Wet:** 0 to 100 %. Equal-power, so the middle does not dip. The default is 100 % (wet only).

**Levels:** The multislider at the bottom of the device: 16 levels, 0 to 1, one per voice, lowest partial first, applied to both sides and through crossfades. The curve is squared, so half the bar is -12 dB and the bottom of the bar reaches silence. Changes take 50 ms. Every voice starts at 1.

**Built in:** each voice has a slow random amplitude wobble, so a frozen chord breathes instead of sounding static. Voices pitched below 20 Hz or above 12 kHz fade out.

Every control is a Live parameter (automatable and saved with your set), except Levels, which is saved with your set and presets but is not automatable. Hover over a control to see its range and default in Live's Info View.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have the Ableton Live Suite installed in your computer. Make sure Ableton is turned off while installing. 

2. For Macintosh:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy and paste br.freeze.partials.1.1.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Also copy ALL of the other files from this folder into the same folder: br.freeze.partials.engine.1.1.maxpat, br.freeze.partials.voice.1.1.maxpat, br.freeze.partials.sort.1.1.js, sigmund~.mxo (Mac), sigmund~.mxe64 (Windows) and sigmund~ LICENSE.txt. **The device will not work without them.**    
  
5. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

6. Either double click on the device, or drag/drop it onto the track where you wish to use it.

**Mac:** a downloaded external may be blocked the first time it loads. If the device says it can't load sigmund~, allow it in System Settings > Privacy & Security, then restart Live.

## <a name="sigmund"></a>sigmund~

br.freeze.partials uses **sigmund~** (sinusoidal analysis and pitch tracking) by **Miller Puckette**, with 32-bit Max ports by Ted Apel, Barry Threw and David Zicarelli, 64-bit Max ports by Volker Böhm, and the Mac (Intel + Apple Silicon) and Windows builds from Isabel Kaspriskie's [mp-objects](https://github.com/isabelgk/mp-objects) package. It is included here under its Standard Improved BSD License (sigmund~ LICENSE.txt). See sigmund~ CREDITS.md for details. If you already have sigmund~ installed, Max may warn about two copies; it still works, and you can delete the one in this folder.

## <a name="Version"></a>Version History  
Version 1.1: first Max for Live release (stereo, crossfade, attack detect, Dry/Wet, Insert/Gate, Levels).

## <a name="Credits"></a>Credits

Partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.
