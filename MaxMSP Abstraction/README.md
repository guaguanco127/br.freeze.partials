# Max/MSP Abstractions:   
## br.freeze.partials.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.partials.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze.partials](https://github.com/guaguanco127/br.freeze.partials)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max 9. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Example Patch](#Example)  
[sigmund~](#sigmund)  
 
 

## <a name="About"></a>About

br.freeze.partials listens to a live sound, finds its strongest partials (the individual sine components) with sigmund~, and on each Freeze holds them as a bank of up to 16 sine voices, sorted low to high. Each voice has its own gentle amplitude wobble and a Buchla-style anti-aliased wavefolder, so a frozen chord can stay pure or grow harmonics with Drive. Partials quieter than the Threshold are ignored, re-freezing glides smoothly into the new chord, and turning it off stops all processing (no CPU). Built for live input: trumpet, voice, anything with a pitch.

### Controls

**Freeze.Partials (on/off):** The switch at the top left. Off fades the output, releases every voice, then stops all processing, including sigmund~, so it uses no CPU. On starts listening again; the voices wait for the next Freeze. The default is on.

**Freeze:** Holds the partials sounding right now. Each partial gets its own voice, lowest partial in voice 1. Freezing again glides each sounding voice to its new partial; voices that are no longer needed fade out, and new ones fade in.

**Thresh:** -100 to 0 dB. Partials quieter than this are ignored at the moment of Freeze, so they never get a voice. Raise it for fewer, stronger partials. The default is -60 dB.

**Pitch:** -36 to 36 semitones. Transposes the whole frozen chord. The default is 0.

**Hi-Pass:** 20 to 20000 Hz. A highpass on the input, before the analysis, so rumble and handling noise don't become partials. The default is 40 Hz.

**Lo-Pass:** 100 to 20000 Hz. A lowpass on the output, to tame bright folded voices. The default is 20000 Hz (open). A fixed 30 Hz highpass on the output also removes any sub-bass.

**Drive:** 1 to 16. The amount of Buchla-style sine folding on every voice: 1 is a pure sine, higher values add harmonics. High partials are folded less, so the top end stays smooth. The default is 1.

**Mix (inlet only):** A list of 16 levels, 0 to 1, one per voice, lowest partial first. It has no control on the panel: connect a multislider (size 16, range 0 - 1) to the last inlet, as in the example patch. Every voice starts at 1, and a voice keeps its own level from one Freeze to the next.

**Built in:** each voice has a slow random amplitude wobble, so a frozen chord breathes instead of sounding static. Voices pitched below 20 Hz or above 12 kHz fade out.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste ALL of the files in this folder inside of the same folder as the Max patch you are using. br.freeze.partials needs all of them:
   - br.freeze.partials.1.0.maxpat (the abstraction)
   - br.freeze.partials.voice.1.0.maxpat (one voice, loaded 16 times)
   - br.freeze.partials.sort.1.0.js (sorts the partials and applies the Threshold)
   - sigmund~.mxo (Mac) and sigmund~.mxe64 (Windows), with sigmund~ LICENSE.txt

3. To use the built-in controls, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the abstraction located within the same folder as your project. Size the bpatcher to 212 x 80 to show all of the controls.

4. Alternatively, create an object with the abstraction's name ([br.freeze.partials.1.0], do not include brackets) and control it through its inlets (see below).

**Mac:** a downloaded external may be blocked the first time it loads. If Max says it can't load sigmund~, allow it in System Settings > Privacy & Security, then restart Max.

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order as the controls on the panel. Sending a value to an inlet moves its on-screen control too, so the display always matches the sound. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Signal In | Signal | mono audio | |
| 2 | Freeze | Bang | | |
| 3 | Pitch | Float | -36 - 36 semitones | 0 |
| 4 | Hi-Pass (input) | Float | 20 - 20000 Hz | 40 |
| 5 | Lo-Pass (output) | Float | 100 - 20000 Hz | 20000 |
| 6 | Drive | Float | 1 - 16 | 1 |
| 7 | Threshold | Float | -100 - 0 dB | -60 |
| 8 | On/Off | Int | 0 / 1 | 1 |
| 9 | Mix | List | 16 floats, 0 - 1, lowest partial first | all 1 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Signal Out: mono audio | Signal |

**Ideas:**
- Hold a note on trumpet or voice, Freeze, then play over the drone.
- Freeze on every phrase from a metro or an attack detector for a chord that keeps following you.
- Mix only the low partials for an organ-like bed, or only the high ones for a shimmer.
- Pitch 12 or -12 for an octave drone; raise Drive slowly for a growling, buzzing chord.

## <a name="Example"></a>Example Patch

Open _br.freeze.partials.example.1.0.maxpat (keep it in the same folder as the abstraction). Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **Source:** the demo tone (a saw, rich in partials) is on when the patch opens; turn on the mic / line in 1 toggle to use your own sound.
- **Freeze:** click Freeze on the panel, then try Pitch, Drive, Thresh and Lo-Pass.
- **Mix:** draw on the multislider to set the level of each partial, lowest on the left.
- **CPU:** turn Freeze.Partials off and watch the CPU readout drop to about 0.

## <a name="sigmund"></a>sigmund~

br.freeze.partials uses **sigmund~** (sinusoidal analysis and pitch tracking) by **Miller Puckette**, with 32-bit Max ports by Ted Apel, Barry Threw and David Zicarelli, 64-bit Max ports by Volker Böhm, and the Mac (Intel + Apple Silicon) and Windows builds from Isabel Kaspriskie's [mp-objects](https://github.com/isabelgk/mp-objects) package. It is included here under its Standard Improved BSD License (sigmund~ LICENSE.txt). See sigmund~ CREDITS.md for details. If you already have sigmund~ installed, Max may warn about two copies; it still works, and you can delete the one in this folder.
