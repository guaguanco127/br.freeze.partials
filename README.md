# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.freeze.partials.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.freeze.partials.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.freeze.partials](https://github.com/guaguanco127/br.freeze.partials)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.freeze.partials/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

A spectral-style freeze for Max/MSP: it tracks the partials of live input and holds them as a bank of 16 sine voices with Buchla-style folding and per-partial mix.

br.freeze.partials listens to a live sound, finds its strongest partials (the individual sine components) with sigmund~, and on each Freeze holds them as a bank of up to 16 sine voices, sorted low to high. Each voice has its own gentle amplitude wobble and a Buchla-style anti-aliased wavefolder, so a frozen chord can stay pure or grow harmonics with Drive. Partials quieter than the Threshold are ignored, re-freezing glides smoothly into the new chord, and turning it off stops all processing (no CPU). Built for live input: trumpet, voice, anything with a pitch.

| Feature | How |
|---|---|
| Partial freeze | Freeze holds the partials sounding now as up to 16 sine voices, sorted low to high |
| Wavefolding | Drive adds a Buchla-style, anti-aliased sine fold to every voice |
| Per-partial mix | A list of 16 levels (for example from a multislider) sets each voice, low to high |
| Threshold | Partials quieter than the Threshold never get a voice |
| Click-free | Voices fade in and out, and re-freezing glides into the new chord |
| Off = no CPU | Turning it off fades out, then stops all processing |

**sigmund~ is included:** br.freeze.partials uses Miller Puckette's sigmund~ to find the partials. A copy for Mac (Intel and Apple Silicon) and Windows is in the download, with its license and credits (sigmund~ CREDITS.md).

The example patch (_br.freeze.partials.example.1.0.maxpat) has a mic input, a demo tone, and a multislider for the per-partial mix.
