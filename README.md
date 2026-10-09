# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.freeze.partials.1.3



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.partials.1.3, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze.partials](https://github.com/guaguanco127/br.freeze.partials)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[What's New in 1.3](#whats-new-in-13)  
[What's New in 1.2](#whats-new-in-12)  
[What's New in 1.1](#whats-new-in-11)  
[About](#About)   
[Ableton Max for Live Device](https://github.com/guaguanco127/br.freeze.partials/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.freeze.partials/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

## What's New in 1.3

- **Mix Mode is now "Thru" / "Aux" (was "Insert" / "Gate").** "Thru" (0) lets the dry sound pass while the effect is off; "Aux" (1) is silent until you turn it on, for use on a send/return. Only the names changed: the numbers, the default and the sound are exactly as in 1.2, so 1.3 swaps in without rewiring.
- The Max for Live device jumps from 1.1 to 1.3, so the abstraction and the device share one number again.

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

A spectral-style freeze for Max/MSP and Max for Live: it tracks the partials of live input and holds them as a bank of 16 sine voices per side with Buchla-style folding and per-partial mix.

br.freeze.partials listens to a stereo sound, finds the strongest partials (the individual sine components) on each side with sigmund~, and on each Freeze holds them as a bank of up to 16 sine voices per side, sorted low to high. Each voice has its own gentle amplitude wobble and a Buchla-style anti-aliased wavefolder, so a frozen chord can stay pure or grow harmonics with Drive. A crossfade can morph slowly from one frozen chord to the next, an attack detector can freeze on every note you play, and a level for each partial lets you shape the chord. Partials quieter than the Threshold are ignored, and turning it off stops all processing (no CPU). Built for live input: trumpet, voice, anything with a pitch.

| Feature | How |
|---|---|
| Partial freeze | Freeze holds the partials sounding now as up to 16 sine voices per side, sorted low to high |
| Crossfade | Morph from one frozen chord to the next over up to 10 seconds |
| Detect | Freeze automatically on every attack |
| Wavefolding | Drive adds a Buchla-style, anti-aliased sine fold to every voice |
| Per-partial levels | 16 levels (a multislider) shape the chord, low to high |
| Threshold | Partials quieter than the Threshold never get a voice |
| Dry/Wet, Thru/Aux | Use it on a track or on a send |
| Off = no CPU | Turning it off fades out, then stops all processing |

**sigmund~ is included:** br.freeze.partials uses Miller Puckette's sigmund~ to find the partials. A copy for Mac (Intel and Apple Silicon) and Windows is in each folder, with its license and credits (sigmund~ CREDITS.md).

The example patch (_br.freeze.partials.example.1.3.maxpat) has a stereo mic input, a stereo demo tone, a multislider for the Levels and a State outlet tab.

## <a name="Version"></a>Version History  
Version 1.3: Mix Mode renamed to Thru / Aux.  
Version 1.2: State outlet, readable control names, State outlet tab in the example.  
Version 1.1: stereo, crossfade, attack detect, Dry/Wet, Insert/Gate, squared Levels, Max for Live device.  
Version 1.0: first release (mono abstraction).

## <a name="Credits"></a>Credits

Partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.
