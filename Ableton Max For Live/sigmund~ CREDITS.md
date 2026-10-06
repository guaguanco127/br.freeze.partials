# sigmund~ (bundled with br.freeze.partials)

br.freeze.partials uses **sigmund~** (sinusoidal analysis and pitch tracking) to find the partials it freezes.
A copy is included in this folder so br.freeze.partials works right after download:

- `sigmund~.mxo`: Mac (Intel and Apple Silicon)
- `sigmund~.mxe64`: Windows 64-bit
- `sigmund~ LICENSE.txt`: its license (Standard Improved BSD License). Keep it with any copy you share.

## Credits

- **Miller Puckette**: original object (Pure Data)
- **Ted Apel, Barry Threw, David Zicarelli**: 32-bit Max ports
- **Volker Böhm**: 64-bit Max ports, https://github.com/v7b1/sigmund_64bit-version
- **Isabel Kaspriskie**: mp-objects package (Intel + Apple Silicon Mac and Windows builds), https://github.com/isabelgk/mp-objects

These builds come from the mp-objects package, version 1.0.0.

## If it doesn't load

- **Mac:** a downloaded external may be blocked the first time. If Max says it can't load sigmund~, allow it in
  System Settings > Privacy & Security, then restart Max.
- **Already installed?** If you already have sigmund~ (for example the mp-objects package), Max may warn about
  duplicates. It still works; you can delete the copy in this folder.
- **Newer builds or the help file:** get the mp-objects package from https://github.com/isabelgk/mp-objects
  (or Max's Package Manager). The original source ships with Pure Data (`extra/sigmund~`).
