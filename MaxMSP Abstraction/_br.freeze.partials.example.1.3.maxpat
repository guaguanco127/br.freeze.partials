{
 "patcher": {
  "fileversion": 1,
  "appversion": {
   "major": 9,
   "minor": 1,
   "revision": 4,
   "architecture": "x64",
   "modernui": 1
  },
  "classnamespace": "box",
  "rect": [
   85.0,
   104.0,
   1149.0,
   756.0
  ],
  "description": "_br.freeze.partials.example.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
  "showontab": 1,
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "linecount": 6,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      831.0,
      5.0,
      632.0,
      87.0
     ],
     "text": "_br.freeze.partials.example.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-1",
     "linecount": 2,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      5.0,
      790.0,
      33.0
     ],
     "text": "br.freeze.partials 1.3: freezes the partials (sine components) of a stereo sound into 16 folded sine voices per side. Pick a source, turn the audio on, raise the gain (it starts muted), then click Freeze on the panel. Try X-Fade for slow morphs between freezes, and detect to freeze on every attack."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-2",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      60.0,
      200.0,
      20.0
     ],
     "text": "1. Source (one or both)"
    }
   },
   {
    "box": {
     "id": "obj-3",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      15.0,
      85.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-4",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      40.0,
      86.0,
      110.0,
      20.0
     ],
     "text": "mic / line in 1 + 2"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-5",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      15.0,
      115.0,
      45.0,
      22.0
     ],
     "text": "$1 50"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-6",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      15.0,
      140.0,
      43.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-7",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "signal"
     ],
     "patching_rect": [
      75.0,
      115.0,
      58.0,
      22.0
     ],
     "text": "adc~ 1 2"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-8",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      170.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-9",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      165.0,
      60.0,
      78.0,
      22.0
     ],
     "text": "loadmess 1"
    }
   },
   {
    "box": {
     "id": "obj-10",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      165.0,
      85.0,
      22.0,
      22.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-11",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      190.0,
      86.0,
      230.0,
      20.0
     ],
     "text": "demo: saw 110 Hz left, 165 Hz right"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-12",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      165.0,
      115.0,
      45.0,
      22.0
     ],
     "text": "$1 50"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-13",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      165.0,
      140.0,
      43.0,
      22.0
     ],
     "text": "line~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-14",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      225.0,
      115.0,
      64.0,
      22.0
     ],
     "text": "saw~ 110"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-15",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      225.0,
      140.0,
      50.0,
      22.0
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-16",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      165.0,
      170.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-17",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      15.0,
      205.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "bgmode": 0,
     "border": 0,
     "clickthrough": 0,
     "enablehscroll": 0,
     "enablevscroll": 0,
     "id": "obj-57",
     "lockeddragscroll": 0,
     "lockedsize": 0,
     "maxclass": "bpatcher",
     "name": "br.freeze.partials.1.3.maxpat",
     "numinlets": 15,
     "numoutlets": 3,
     "offset": [
      0.0,
      0.0
     ],
     "outlettype": [
      "signal",
      "signal",
      ""
     ],
     "patching_rect": [
      15.0,
      245.0,
      340.0,
      84.0
     ],
     "viewvisibility": 1
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-58",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      360.0,
      160.0,
      20.0
     ],
     "text": "2. Output (starts muted)"
    }
   },
   {
    "box": {
     "id": "obj-59",
     "lastchannelcount": 0,
     "maxclass": "live.gain~",
     "numinlets": 2,
     "numoutlets": 5,
     "outlettype": [
      "signal",
      "signal",
      "",
      "float",
      "list"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      15.0,
      385.0,
      48.0,
      136.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -70
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "example-gain",
       "parameter_mmax": 6.0,
       "parameter_mmin": -70.0,
       "parameter_modmode": 3,
       "parameter_shortname": "gain",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "example-gain"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-60",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      75.0,
      385.0,
      92.0,
      22.0
     ],
     "text": "loadmess -70"
    }
   },
   {
    "box": {
     "id": "obj-61",
     "maxclass": "toggle",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "int"
     ],
     "parameter_enable": 0,
     "patching_rect": [
      15.0,
      530.0,
      24.0,
      24.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-62",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      42.0,
      531.0,
      90.0,
      20.0
     ],
     "text": "audio on/off"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-63",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 0,
     "patching_rect": [
      15.0,
      560.0,
      40.0,
      22.0
     ],
     "text": "dac~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-69",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400.0,
      245.0,
      703.0,
      47.0
     ],
     "text": "Keep every file from this folder together, next to your patch: br.freeze.partials.1.3.maxpat, br.freeze.partials.engine.1.1.maxpat, br.freeze.partials.voice.1.1.maxpat, br.freeze.partials.sort.1.1.js, plus sigmund~ (Mac .mxo, Windows .mxe64) and its license. Mac: if sigmund~ is blocked the first time, allow it in System Settings > Privacy & Security. Hover over an inlet for its range and default."
    }
   },
   {
    "box": {
     "contdata": 1,
     "id": "obj-ms",
     "maxclass": "multislider",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 0,
     "patching_rect": [
      434.0,
      119.0,
      307.0,
      82.0
     ],
     "setminmax": [
      0.0,
      1.0
     ],
     "setstyle": 1,
     "size": 16,
     "spacing": 2
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-msc",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      400.0,
      60.0,
      380.0,
      20.0
     ],
     "text": "Levels (last inlet): 16 voices, low -> high partial, both sides"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-msl",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      434.0,
      93.0,
      307.0,
      22.0
     ],
     "text": "loadmess setlist 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1. 1."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "mic-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      75.0,
      170.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "saw-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      295.0,
      115.0,
      64.0,
      22.0
     ],
     "text": "saw~ 165"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "sawg-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      295.0,
      140.0,
      50.0,
      22.0
     ],
     "text": "*~ 0.3"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dem-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      225.0,
      170.0,
      40.0,
      22.0
     ],
     "text": "*~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "sum-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      130.0,
      205.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-state",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 0,
     "patcher": {
      "fileversion": 1,
      "appversion": {
       "major": 9,
       "minor": 1,
       "revision": 4,
       "architecture": "x64",
       "modernui": 1
      },
      "classnamespace": "box",
      "rect": [
       0.0,
       26.0,
       1149.0,
       730.0
      ],
      "showontab": 1,
      "boxes": [
       {
        "box": {
         "comment": "State outlet of br.freeze.partials",
         "id": "obj-1",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          30.0,
          95.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-2",
         "linecount": 4,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          15.0,
          600.0,
          60.0
         ],
         "text": "br.freeze.partials sends its state out of its LAST outlet as named messages, the moment a setting changes, from the panel or from an inlet. route picks them apart by name. Each message carries the same value its inlet takes, so a State message can go straight back into that inlet. Freeze is an action, not a setting, so it is not sent."
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-3",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          70.0,
          100.0,
          200.0,
          20.0
         ],
         "text": "from the main tab"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "obj-4",
         "maxclass": "newobj",
         "numinlets": 12,
         "numoutlets": 12,
         "outlettype": [
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          "",
          ""
         ],
         "patching_rect": [
          30.0,
          135.0,
          605.0,
          22.0
         ],
         "text": "route pitch hipass lopass drive crossfade sensitivity drywet threshold on detect mode"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-pitch",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          30.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-pitch",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "pitch (st)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-hipass",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          140.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-hipass",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "hipass (Hz)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-lopass",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          250.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-lopass",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "lopass (Hz)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-drive",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          360.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-drive",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          360.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "drive"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-crossfade",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          470.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-crossfade",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          470.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "crossfade (ms)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-sensitivity",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          580.0,
          200.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-sensitivity",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          580.0,
          225.0,
          105.0,
          20.0
         ],
         "text": "sensitivity"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-drywet",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          30.0,
          270.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-drywet",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          30.0,
          295.0,
          105.0,
          20.0
         ],
         "text": "drywet (%)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "format": 6,
         "id": "n-threshold",
         "maxclass": "flonum",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          140.0,
          270.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-threshold",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          140.0,
          295.0,
          105.0,
          20.0
         ],
         "text": "threshold (dB)"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "n-on",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          250.0,
          270.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-on",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250.0,
          295.0,
          105.0,
          20.0
         ],
         "text": "on"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "n-detect",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          360.0,
          270.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-detect",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          360.0,
          295.0,
          105.0,
          20.0
         ],
         "text": "detect"
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "n-mode",
         "maxclass": "number",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "",
          "bang"
         ],
         "parameter_enable": 0,
         "patching_rect": [
          470.0,
          270.0,
          60.0,
          22.0
         ]
        }
       },
       {
        "box": {
         "fontname": "Arial",
         "fontsize": 12.0,
         "id": "l-mode",
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          470.0,
          295.0,
          160.0,
          20.0
         ],
         "text": "mode (0 Thru, 1 Aux)"
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "obj-4",
          0
         ],
         "source": [
          "obj-1",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-crossfade",
          0
         ],
         "source": [
          "obj-4",
          4
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-detect",
          0
         ],
         "source": [
          "obj-4",
          9
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-drive",
          0
         ],
         "source": [
          "obj-4",
          3
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-drywet",
          0
         ],
         "source": [
          "obj-4",
          6
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-hipass",
          0
         ],
         "source": [
          "obj-4",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-lopass",
          0
         ],
         "source": [
          "obj-4",
          2
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-mode",
          0
         ],
         "source": [
          "obj-4",
          10
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-on",
          0
         ],
         "source": [
          "obj-4",
          8
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-pitch",
          0
         ],
         "source": [
          "obj-4",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-sensitivity",
          0
         ],
         "source": [
          "obj-4",
          5
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "n-threshold",
          0
         ],
         "source": [
          "obj-4",
          7
         ]
        }
       }
      ]
     },
     "patching_rect": [
      400.0,
      320.0,
      128.0,
      22.0
     ],
     "text": "p \"State outlet\""
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-statec",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      535.0,
      320.0,
      330.0,
      20.0
     ],
     "text": "State outlet (3rd outlet) -> see the State outlet tab"
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "sum-R",
      1
     ],
     "source": [
      "dem-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum-R",
      0
     ],
     "source": [
      "mic-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-12",
      0
     ],
     "source": [
      "obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-13",
      0
     ],
     "source": [
      "obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dem-R",
      0
     ],
     "order": 0,
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-16",
      0
     ],
     "order": 1,
     "source": [
      "obj-13",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-15",
      0
     ],
     "source": [
      "obj-14",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-16",
      1
     ],
     "source": [
      "obj-15",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-17",
      1
     ],
     "source": [
      "obj-16",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      0
     ],
     "source": [
      "obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-5",
      0
     ],
     "source": [
      "obj-3",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-6",
      0
     ],
     "source": [
      "obj-5",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-59",
      1
     ],
     "source": [
      "obj-57",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-59",
      0
     ],
     "source": [
      "obj-57",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-state",
      0
     ],
     "source": [
      "obj-57",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-63",
      1
     ],
     "source": [
      "obj-59",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-63",
      0
     ],
     "source": [
      "obj-59",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "mic-R",
      0
     ],
     "order": 0,
     "source": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      0
     ],
     "order": 1,
     "source": [
      "obj-6",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-59",
      0
     ],
     "source": [
      "obj-60",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-63",
      0
     ],
     "source": [
      "obj-61",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "mic-R",
      1
     ],
     "source": [
      "obj-7",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-8",
      1
     ],
     "source": [
      "obj-7",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-17",
      0
     ],
     "source": [
      "obj-8",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-10",
      0
     ],
     "source": [
      "obj-9",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      14
     ],
     "source": [
      "obj-ms",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-ms",
      0
     ],
     "source": [
      "obj-msl",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sawg-R",
      0
     ],
     "source": [
      "saw-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dem-R",
      1
     ],
     "source": [
      "sawg-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-57",
      1
     ],
     "source": [
      "sum-R",
      0
     ]
    }
   }
  ],
  "parameters": {
   "obj-57::obj-10": [
    "Pitch",
    "Pitch",
    0
   ],
   "obj-57::obj-11": [
    "Hi-Pass",
    "Hi-Pass",
    0
   ],
   "obj-57::obj-12": [
    "Lo-Pass",
    "Lo-Pass",
    0
   ],
   "obj-57::obj-17": [
    "Drive",
    "Drive",
    0
   ],
   "obj-57::obj-19": [
    "On/Off",
    "On",
    0
   ],
   "obj-57::obj-21": [
    "Threshold",
    "Thresh",
    0
   ],
   "obj-57::obj-9": [
    "Freeze",
    "Freeze",
    0
   ],
   "obj-57::ui-det": [
    "Detect",
    "Detect",
    0
   ],
   "obj-57::ui-dw": [
    "Dry/Wet",
    "Dry/Wet",
    0
   ],
   "obj-57::ui-mode": [
    "Mode",
    "Mode",
    0
   ],
   "obj-57::ui-sen": [
    "Sensitivity",
    "Sens",
    0
   ],
   "obj-57::ui-xf": [
    "Crossfade",
    "X-Fade",
    0
   ],
   "obj-59": [
    "example-gain",
    "gain",
    0
   ],
   "parameterbanks": {
    "0": {
     "index": 0,
     "name": "",
     "parameters": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ],
     "buttons": [
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-",
      "-"
     ]
    }
   },
   "parameter_overrides": {},
   "inherited_shortname": 1
  },
  "autosave": 0
 }
}