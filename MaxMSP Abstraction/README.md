# Max/MSP Abstractions:   
## br.freeze.partials.1.2



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.partials.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze.partials](https://github.com/guaguanco127/br.freeze.partials)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's New in 1.2](#whats-new-in-12)  
[What's New in 1.1](#whats-new-in-11)  
[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[sigmund~](#sigmund)  
 
## What's New in 1.2

- **State outlet** (abstraction only): a new last outlet sends every setting as a named message the moment it changes (`pitch`, `hipass`, `lopass`, `drive`, `crossfade`, `sensitivity`, `drywet`, `threshold`, `on`, `detect`, `mode`). See [State outlet](https://github.com/guaguanco127/br.freeze.partials/tree/main/MaxMSP%20Abstraction#State).
- Every inlet and the L/R outlets are unchanged, so 1.2 swaps in for 1.1 without rewiring.
- **Example patch:** _br.freeze.partials.example.1.2 has a new State outlet tab.
- The controls have readable names (Freeze, Pitch, Hi-Pass, Lo-Pass, Drive, Crossfade, Sensitivity, Dry/Wet, Threshold, On/Off, Detect, Mode), so presets and pattr show them clearly.
- The engine, voice and sorter files are still **1.1**. The Max for Live device is unchanged (1.1).

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

**Levels:** 16 levels, 0 to 1, one per voice, lowest partial first, applied to both sides and through crossfades. The curve is squared, so half the bar is -12 dB and the bottom of the bar reaches silence. Changes take 50 ms. Every voice starts at 1.

**Built in:** each voice has a slow random amplitude wobble, so a frozen chord breathes instead of sounding static. Voices pitched below 20 Hz or above 12 kHz fade out.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste ALL of the files in this folder inside of the same folder as the Max patch you are using. br.freeze.partials needs all of them:
   - br.freeze.partials.1.2.maxpat (the abstraction)
   - br.freeze.partials.engine.1.1.maxpat (one side's engine, used twice)
   - br.freeze.partials.voice.1.1.maxpat (one voice)
   - br.freeze.partials.sort.1.1.js (sorts the partials, applies the Threshold and the crossfade)
   - sigmund~.mxo (Mac) and sigmund~.mxe64 (Windows), with sigmund~ LICENSE.txt

3. To use the built-in controls, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the abstraction located within the same folder as your project. Size the bpatcher to 340 x 84 to show all of the controls.

4. Alternatively, create an object with the abstraction's name ([br.freeze.partials.1.2], do not include brackets) and control it through its inlets (see below).

**Mac:** a downloaded external may be blocked the first time it loads. If Max says it can't load sigmund~, allow it in System Settings > Privacy & Security, then restart Max.

**Updating from 1.1:** 1.2 only adds the State outlet; every inlet and the L/R outlets are unchanged. Replace br.freeze.partials.1.1.maxpat with br.freeze.partials.1.2.maxpat; the engine, voice and sorter files stay the same.

**Updating from 1.0:** 1.1 is stereo and has new inlets, so re-connect anything that was patched into 1.0.

## <a name="Use"></a>How To Use

Every control has its own inlet. Sending a value to an inlet moves its on-screen control too, so the display always matches the sound. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio (for mono, connect it to Left and Right) | |
| 2 | Right In | Signal | audio | |
| 3 | Freeze | Bang | ignored during a crossfade | |
| 4 | Pitch | Float | -36 - 36 semitones | 0 |
| 5 | Hi-Pass (input) | Float | 20 - 20000 Hz | 40 |
| 6 | Lo-Pass (output) | Float | 100 - 20000 Hz | 20000 |
| 7 | Drive | Float | 1 - 16 | 1 |
| 8 | Crossfade | Float | 0 - 10000 ms | 0 |
| 9 | Sensitivity | Float | 0 - 1 | 0.5 |
| 10 | Dry/Wet | Float | 0 - 100 % | 100 |
| 11 | Threshold | Float | -100 - 0 dB | -60 |
| 12 | On/Off | Int | 0 / 1 (1 also freezes right away) | 1 |
| 13 | Detect | Int | 0 / 1 | 0 |
| 14 | Mode | Int | 0 = Insert, 1 = Gate | 1 |
| 15 | Levels | List | 16 floats, 0 - 1, lowest partial first | all 1 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | State | Messages: `<name> <value>` (see [State outlet](#State)) |

**Ideas:**
- Hold a note on trumpet or voice, Freeze, then play over the drone.
- Turn on Detect with a long X-Fade: the drone follows each note you play, morphing slowly.
- Shape the Levels: only the low partials for an organ-like bed, only the high ones for a shimmer, every other one for a hollow sound.
- Pitch 12 or -12 for an octave drone; raise Drive slowly for a growling, buzzing chord.

## <a name="State"></a>State outlet

The last outlet sends the current settings as named messages the moment they change, for example `pitch 12.`, `on 0`, `drywet 70.`. Clicking a control, numbers into the inlets and preset recalls all show up; repeats are filtered out. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route pitch hipass lopass drive crossfade sensitivity drywet threshold on detect mode], not by position, so your patch keeps working if a later version adds controls.

| Name | Control | Values |
|---|---|---|
| pitch | Pitch | -36 - 36 semitones |
| hipass | Hi-Pass | 20 - 20000 Hz |
| lopass | Lo-Pass | 100 - 20000 Hz |
| drive | Drive | 1 - 16 |
| crossfade | X-Fade | 0 - 10000 ms |
| sensitivity | Sens | 0 - 1 |
| drywet | Dry/Wet | 0 - 100 % |
| threshold | Thresh | -100 - 0 dB |
| on | Freeze.Partials (on/off) | 0 = Off, 1 = On |
| detect | Detect | 0 = Off, 1 = On |
| mode | Insert / Gate | 0 = Insert, 1 = Gate |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. Freeze is an action, not a setting, so it is not sent. Levels has no control on the panel (it comes in through the last inlet), so it is not sent either.

## <a name="Example"></a>Example Patch

Open _br.freeze.partials.example.1.2.maxpat (keep it in the same folder as the abstraction). Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **Source:** the demo tone (a saw at 110 Hz on the left and 165 Hz on the right) is on when the patch opens; turn on the mic / line in 1 + 2 toggle to use your own sound.
- **Freeze:** click Freeze on the panel, then try X-Fade, Detect, Pitch, Drive, Thresh and Dry/Wet.
- **Levels:** draw on the multislider to set the level of each partial, lowest on the left.
- **CPU:** switch Freeze.Partials off and watch the CPU readout drop to about 0.
- **State outlet tab:** the numbers follow every setting as you change it on the panel.

## <a name="sigmund"></a>sigmund~

br.freeze.partials uses **sigmund~** (sinusoidal analysis and pitch tracking) by **Miller Puckette**, with 32-bit Max ports by Ted Apel, Barry Threw and David Zicarelli, 64-bit Max ports by Volker Böhm, and the Mac (Intel + Apple Silicon) and Windows builds from Isabel Kaspriskie's [mp-objects](https://github.com/isabelgk/mp-objects) package. It is included here under its Standard Improved BSD License (sigmund~ LICENSE.txt). See sigmund~ CREDITS.md for details. If you already have sigmund~ installed, Max may warn about two copies; it still works, and you can delete the one in this folder.

## <a name="Credits"></a>Credits

Partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.
