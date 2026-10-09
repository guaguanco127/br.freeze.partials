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
  "openrect": [
   85.0,
   104.0,
   340.0,
   84.0
  ],
  "openrectmode": 0,
  "openinpresentation": 1,
  "devicewidth": 340.0,
  "description": "br.freeze.partials.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
  "boxes": [
   {
    "box": {
     "id": "obj-signature",
     "linecount": 6,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1320.0,
      20.0,
      632.0,
      87.0
     ],
     "text": "br.freeze.partials.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan."
    }
   },
   {
    "box": {
     "comment": "Left In: audio. For a mono source, connect it to both Left and Right",
     "id": "in-L",
     "index": 1,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      30.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Right In: audio",
     "id": "in-R",
     "index": 2,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      115.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Freeze: bang captures the partials sounding now (ignored during a crossfade)",
     "id": "in-frz",
     "index": 3,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      200.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Pitch: float, -36 - 36 semitones, default 0",
     "id": "in-pit",
     "index": 4,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      285.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Hi-Pass (input): float, 20 - 20000 Hz, default 40",
     "id": "in-hp",
     "index": 5,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      370.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Lo-Pass (output): float, 100 - 20000 Hz, default 20000",
     "id": "in-lp",
     "index": 6,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      455.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Drive (fold amount): float, 1 - 16, default 1",
     "id": "in-drv",
     "index": 7,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      540.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Crossfade: float, 0 - 10000 ms, default 0. 0 = quick glide; above 0 each Freeze fades the old chord out and the new one in",
     "id": "in-xf",
     "index": 8,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      625.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Sensitivity (Detect): float, 0 - 1, higher = softer attacks freeze, default 0.5",
     "id": "in-sen",
     "index": 9,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      710.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Dry/Wet: float, 0 - 100 %, default 100",
     "id": "in-dw",
     "index": 10,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      795.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Threshold: float, -100 - 0 dB, default -60. Quieter partials never get a voice",
     "id": "in-thr",
     "index": 11,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      880.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "On/Off: int 0 / 1, default 1. 0 = off (no CPU); 1 = on + freezes right away",
     "id": "in-on",
     "index": 12,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      965.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Detect: int 0 / 1, default 0. 1 = freeze automatically on every attack",
     "id": "in-det",
     "index": 13,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1050.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Mode: int 0 = Thru (dry passes while off), 1 = Aux (silent while off), default 1",
     "id": "in-mode",
     "index": 14,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1135.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "comment": "Levels: list of 16 floats 0 - 1 (voices low -> high partial, both sides), default all 1. Connect your own multislider here",
     "id": "in-lev",
     "index": 15,
     "maxclass": "inlet",
     "numinlets": 0,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1220.0,
      20.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-9",
     "maxclass": "live.button",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      200.0,
      60.0,
      15.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      5.0,
      32.0,
      39.0,
      34.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_longname": "Freeze",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "Freeze",
       "parameter_type": 2
      }
     },
     "varname": "Freeze"
    }
   },
   {
    "box": {
     "fontsize": 12.0,
     "id": "obj-10",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      285.0,
      60.0,
      53.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      95.0,
      23.0,
      53.0,
      18.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Pitch",
       "parameter_mmax": 36.0,
       "parameter_mmin": -36.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Pitch",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "varname": "Pitch"
    }
   },
   {
    "box": {
     "fontsize": 12.0,
     "id": "obj-11",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      370.0,
      60.0,
      53.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      95.0,
      41.0,
      53.0,
      18.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        40
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Hi-Pass",
       "parameter_mmax": 20000.0,
       "parameter_mmin": 20.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Hi-Pass",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "Hi-Pass"
    }
   },
   {
    "box": {
     "fontsize": 12.0,
     "id": "obj-12",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      455.0,
      60.0,
      53.0,
      18.0
     ],
     "presentation": 1,
     "presentation_rect": [
      95.0,
      59.0,
      53.0,
      18.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        20000
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Lo-Pass",
       "parameter_mmax": 20000.0,
       "parameter_mmin": 100.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Lo-Pass",
       "parameter_type": 0,
       "parameter_unitstyle": 3
      }
     },
     "varname": "Lo-Pass"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "obj-17",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      540.0,
      60.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      153.0,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_exponent": 2.0,
       "parameter_initial": [
        1.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Drive",
       "parameter_mmax": 16.0,
       "parameter_mmin": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Drive",
       "parameter_type": 0,
       "parameter_unitstyle": 1
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Drive"
    }
   },
   {
    "box": {
     "id": "obj-21",
     "maxclass": "live.numbox",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      880.0,
      60.0,
      50.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      150.0,
      5.0,
      45.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "valueof": {
       "parameter_initial": [
        -60
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Threshold",
       "parameter_mmax": 0.0,
       "parameter_mmin": -100.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Thresh",
       "parameter_type": 0,
       "parameter_unitstyle": 4
      }
     },
     "varname": "Threshold"
    }
   },
   {
    "box": {
     "activebgoncolor": [
      0.618934978328545,
      0.744701397656435,
      0.953750108255376,
      1.0
     ],
     "id": "obj-19",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      965.0,
      60.0,
      50.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      5.0,
      5.0,
      93.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "activebgoncolor": {
       "expression": "themecolor.live_numbox_triangle"
      },
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "On/Off",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "On",
       "parameter_type": 2
      }
     },
     "text": "Freeze.Partials",
     "texton": "Freeze.Partials",
     "varname": "On/Off"
    }
   },
   {
    "box": {
     "id": "obj-13",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1860.0,
      20.0,
      150.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      48.0,
      22.0,
      46.0,
      20.0
     ],
     "text": "Pitch",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-14",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1860.0,
      45.0,
      150.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      48.0,
      40.0,
      52.0,
      20.0
     ],
     "text": "Hi-Pass",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "obj-16",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1860.0,
      95.0,
      60.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      48.0,
      58.0,
      53.0,
      20.0
     ],
     "text": "Lo-Pass",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "id": "obj-46",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1860.0,
      120.0,
      60.0,
      20.0
     ],
     "presentation": 1,
     "presentation_rect": [
      98.5,
      2.5,
      46.0,
      20.0
     ],
     "text": "Thresh",
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ]
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "ui-xf",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      625.0,
      60.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      199.0,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_exponent": 3.0,
       "parameter_initial": [
        0.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Crossfade",
       "parameter_mmax": 10000.0,
       "parameter_modmode": 0,
       "parameter_shortname": "X-Fade",
       "parameter_type": 0,
       "parameter_unitstyle": 2,
       "parameter_mmin": 0.0
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Crossfade"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "ui-sen",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      710.0,
      60.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      245.0,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        0.5
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Sensitivity",
       "parameter_mmax": 1.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Sens",
       "parameter_type": 0,
       "parameter_unitstyle": 1,
       "parameter_mmin": 0.0
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Sensitivity"
    }
   },
   {
    "box": {
     "activeneedlecolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "id": "ui-dw",
     "maxclass": "live.dial",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      "float"
     ],
     "parameter_enable": 1,
     "patching_rect": [
      795.0,
      60.0,
      44.0,
      48.0
     ],
     "presentation": 1,
     "presentation_rect": [
      291.0,
      25.0,
      44.0,
      48.0
     ],
     "saved_attribute_attributes": {
      "activeneedlecolor": {
       "expression": ""
      },
      "textcolor": {
       "expression": ""
      },
      "valueof": {
       "parameter_initial": [
        100.0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Dry/Wet",
       "parameter_mmax": 100.0,
       "parameter_modmode": 0,
       "parameter_shortname": "Dry/Wet",
       "parameter_type": 0,
       "parameter_unitstyle": 5,
       "parameter_mmin": 0.0
      }
     },
     "textcolor": [
      1.0,
      1.0,
      1.0,
      1.0
     ],
     "varname": "Dry/Wet"
    }
   },
   {
    "box": {
     "activebgoncolor": [
      0.618934978328545,
      0.744701397656435,
      0.953750108255376,
      1.0
     ],
     "id": "ui-det",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1050.0,
      60.0,
      60.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      201.0,
      5.0,
      64.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "activebgoncolor": {
       "expression": "themecolor.live_numbox_triangle"
      },
      "valueof": {
       "parameter_enum": [
        "off",
        "on"
       ],
       "parameter_initial": [
        0
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Detect",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "Detect",
       "parameter_type": 2
      }
     },
     "text": "Detect",
     "texton": "Detect",
     "varname": "Detect"
    }
   },
   {
    "box": {
     "activebgoncolor": [
      0.618934978328545,
      0.744701397656435,
      0.953750108255376,
      1.0
     ],
     "id": "ui-mode",
     "maxclass": "live.text",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "parameter_enable": 1,
     "patching_rect": [
      1135.0,
      60.0,
      60.0,
      15.0
     ],
     "presentation": 1,
     "presentation_rect": [
      270.0,
      5.0,
      64.0,
      15.0
     ],
     "saved_attribute_attributes": {
      "activebgoncolor": {
       "expression": "themecolor.live_numbox_triangle"
      },
      "valueof": {
       "parameter_enum": [
        "thru",
        "aux"
       ],
       "parameter_initial": [
        1
       ],
       "parameter_initial_enable": 1,
       "parameter_longname": "Mode",
       "parameter_mmax": 1,
       "parameter_modmode": 0,
       "parameter_shortname": "Mode",
       "parameter_type": 2
      }
     },
     "text": "Thru",
     "texton": "Aux",
     "varname": "Mode"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "eng-L",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      30.0,
      505.0,
      200.0,
      22.0
     ],
     "text": "br.freeze.partials.engine.1.1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "eng-R",
     "maxclass": "newobj",
     "numinlets": 10,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      560.0,
      505.0,
      200.0,
      22.0
     ],
     "text": "br.freeze.partials.engine.1.1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-obj-10",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      285.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-obj-11",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      370.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-obj-12",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      455.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-obj-17",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      540.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-obj-21",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      880.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-lev",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "",
      ""
     ],
     "patching_rect": [
      1220.0,
      245.0,
      70.0,
      22.0
     ],
     "text": "trigger l l"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "frz-ob",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      "bang"
     ],
     "patching_rect": [
      200.0,
      245.0,
      75.0,
      22.0
     ],
     "text": "onebang 1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "frz-t",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      "bang"
     ],
     "patching_rect": [
      200.0,
      275.0,
      70.0,
      22.0
     ],
     "text": "trigger b b"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "frz-lock",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      280.0,
      305.0,
      60.0,
      22.0
     ],
     "text": "delay 20"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "frz-t2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      "bang"
     ],
     "patching_rect": [
      200.0,
      335.0,
      70.0,
      22.0
     ],
     "text": "trigger b b"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "c-frz",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      280.0,
      335.0,
      280.0,
      20.0
     ],
     "text": "lockout: a Freeze during a crossfade is dropped"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-xf",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "float",
      "float",
      "float"
     ],
     "patching_rect": [
      625.0,
      245.0,
      80.0,
      22.0
     ],
     "text": "trigger f f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "xf-min",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "int"
     ],
     "patching_rect": [
      655.0,
      275.0,
      81.0,
      22.0
     ],
     "text": "maximum 20."
    }
   },
   {
    "box": {
     "id": "det",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
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
       100.0,
       100.0,
       820.0,
       380.0
      ],
      "boxes": [
       {
        "box": {
         "comment": "Detect on/off (Int)",
         "id": "d-in1",
         "index": 1,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "int"
         ],
         "patching_rect": [
          50.0,
          30.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "Input signal",
         "id": "d-in2",
         "index": 2,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patching_rect": [
          250.0,
          30.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "comment": "1 - Sensitivity (Float) 0 - 1",
         "id": "d-in3",
         "index": 3,
         "maxclass": "inlet",
         "numinlets": 0,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          350.0,
          30.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "id": "d-m1",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          50.0,
          80.0,
          62.0,
          22.0
         ],
         "text": "detect $1"
        }
       },
       {
        "box": {
         "id": "d-ex",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          350.0,
          80.0,
          260.0,
          22.0
         ],
         "text": "expr 3. + 21. * pow(min(max($f1\\, 0.)\\, 1.)\\, 2.)"
        }
       },
       {
        "box": {
         "id": "d-m2",
         "maxclass": "message",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          350.0,
          115.0,
          64.0,
          22.0
         ],
         "text": "sensdb $1"
        }
       },
       {
        "box": {
         "id": "d-gen",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          "signal"
         ],
         "patcher": {
          "fileversion": 1,
          "appversion": {
           "major": 9,
           "minor": 1,
           "revision": 4,
           "architecture": "x64",
           "modernui": 1
          },
          "classnamespace": "dsp.gen",
          "rect": [
           100.0,
           100.0,
           680.0,
           720.0
          ],
          "boxes": [
           {
            "box": {
             "id": "obj-1",
             "maxclass": "newobj",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              20.0,
              20.0,
              30.0,
              22.0
             ],
             "text": "in 1"
            }
           },
           {
            "box": {
             "id": "obj-2",
             "maxclass": "newobj",
             "numinlets": 0,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              80.0,
              20.0,
              30.0,
              22.0
             ],
             "text": "in 2"
            }
           },
           {
            "box": {
             "code": "// onset detector: one trigger per attack. A fast envelope (5 ms release) must rise above a slow one\n// (100 ms) by 'sensdb' dB; it re-arms once the fast envelope settles back (hysteresis = half the dB),\n// with a 50 ms lockout. in1/in2 = dry input L/R. out1 = 1 from the attack until re-armed (-> edge~).\nParam detect(0, min=0, max=1);\nParam sensdb(9, min=3, max=24);\nHistory fe(0);\nHistory se(0);\nHistory arm(1);\nHistory lk(0);\nf = fe;\nsl = se;\nar = arm;\nk = lk;\nlvl = 0;\nrise = 1;\nif (detect > 0.5) {\n    lvl = max(abs(in1), abs(in2));\n    f = max(lvl, f * exp(-1 / mstosamps(5)));\n    sl = sl + (f - sl) * (1 - exp(-1 / mstosamps(100)));\n    rise = dbtoa(sensdb);\n    k = max(k - 1, 0);\n    if (ar > 0.5) {\n        if (f > sl * rise && f > 0.003 && k <= 0) {\n            ar = 0;\n            k = mstosamps(50);\n        }\n    } else if (f < sl * sqrt(rise)) {\n        ar = 1;\n    }\n} else {\n    f = 0;\n    sl = 0;\n    ar = 1;\n    k = 0;\n}\nfe = f;\nse = sl;\narm = ar;\nlk = k;\nout1 = 1 - ar;\n",
             "fontface": 0,
             "fontname": "<Monospaced>",
             "fontsize": 12.0,
             "id": "obj-4",
             "maxclass": "codebox",
             "numinlets": 2,
             "numoutlets": 1,
             "outlettype": [
              ""
             ],
             "patching_rect": [
              20.0,
              60.0,
              620.0,
              560.0
             ]
            }
           },
           {
            "box": {
             "id": "obj-5",
             "maxclass": "newobj",
             "numinlets": 1,
             "numoutlets": 0,
             "patching_rect": [
              20.0,
              640.0,
              35.0,
              22.0
             ],
             "text": "out 1"
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
              "obj-4",
              1
             ],
             "source": [
              "obj-2",
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
              "obj-4",
              0
             ]
            }
           }
          ]
         },
         "patching_rect": [
          250.0,
          160.0,
          200.0,
          22.0
         ],
         "text": "gen~ @title br.delay.pitch.onset",
         "varname": "gen~_onset"
        }
       },
       {
        "box": {
         "id": "d-edge",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 2,
         "outlettype": [
          "bang",
          "bang"
         ],
         "patching_rect": [
          250.0,
          200.0,
          45.0,
          22.0
         ],
         "text": "edge~"
        }
       },
       {
        "box": {
         "id": "d-pipe",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          250.0,
          240.0,
          55.0,
          22.0
         ],
         "text": "pipe 65"
        }
       },
       {
        "box": {
         "id": "d-lb",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 1,
         "outlettype": [
          "bang"
         ],
         "patching_rect": [
          450.0,
          200.0,
          58.0,
          22.0
         ],
         "text": "loadbang"
        }
       },
       {
        "box": {
         "id": "d-ds",
         "maxclass": "newobj",
         "numinlets": 1,
         "numoutlets": 4,
         "outlettype": [
          "int",
          "float",
          "int",
          "int"
         ],
         "patching_rect": [
          450.0,
          230.0,
          70.0,
          22.0
         ],
         "text": "dspstate~"
        }
       },
       {
        "box": {
         "id": "d-cap",
         "maxclass": "newobj",
         "numinlets": 2,
         "numoutlets": 1,
         "outlettype": [
          ""
         ],
         "patching_rect": [
          450.0,
          260.0,
          190.0,
          22.0
         ],
         "text": "expr (1536. + $f2) / $f1 * 1000."
        }
       },
       {
        "box": {
         "comment": "Bang per attack (after the capture delay)",
         "id": "d-out",
         "index": 1,
         "maxclass": "outlet",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          250.0,
          290.0,
          30.0,
          30.0
         ]
        }
       },
       {
        "box": {
         "id": "d-cm",
         "linecount": 4,
         "maxclass": "comment",
         "numinlets": 1,
         "numoutlets": 0,
         "patching_rect": [
          450.0,
          30.0,
          330.0,
          60.0
         ],
         "text": "Onset detector (from br.freeze 1.4): one trigger per attack. The bang waits about one sigmund~ window (1024 + 512 hop samples + one vector) so the freeze holds the attack, not the sound before it."
        }
       }
      ],
      "lines": [
       {
        "patchline": {
         "destination": [
          "d-pipe",
          1
         ],
         "source": [
          "d-cap",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-cap",
          1
         ],
         "source": [
          "d-ds",
          2
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-cap",
          0
         ],
         "source": [
          "d-ds",
          1
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-pipe",
          0
         ],
         "source": [
          "d-edge",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-m2",
          0
         ],
         "source": [
          "d-ex",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-edge",
          0
         ],
         "source": [
          "d-gen",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-m1",
          0
         ],
         "source": [
          "d-in1",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-gen",
          0
         ],
         "source": [
          "d-in2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-ex",
          0
         ],
         "source": [
          "d-in3",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-ds",
          0
         ],
         "source": [
          "d-lb",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-gen",
          0
         ],
         "source": [
          "d-m1",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-gen",
          0
         ],
         "source": [
          "d-m2",
          0
         ]
        }
       },
       {
        "patchline": {
         "destination": [
          "d-out",
          0
         ],
         "source": [
          "d-pipe",
          0
         ]
        }
       }
      ]
     },
     "patching_rect": [
      1050.0,
      305.0,
      150.0,
      22.0
     ],
     "text": "p Detect"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "sen-inv",
     "maxclass": "newobj",
     "numinlets": 6,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      710.0,
      245.0,
      110.0,
      22.0
     ],
     "text": "scale 0. 1. 1. 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-on",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "int",
      "int",
      "int"
     ],
     "patching_rect": [
      965.0,
      245.0,
      80.0,
      22.0
     ],
     "text": "trigger i i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-on2",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      965.0,
      405.0,
      70.0,
      22.0
     ],
     "text": "trigger i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "on-sel",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "bang",
      ""
     ],
     "patching_rect": [
      1055.0,
      275.0,
      60.0,
      22.0
     ],
     "text": "select 1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "on-dly",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1055.0,
      335.0,
      60.0,
      22.0
     ],
     "text": "delay 60"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "on-stop",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1125.0,
      305.0,
      38.0,
      22.0
     ],
     "text": "stop"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "c-on",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1055.0,
      360.0,
      373.0,
      20.0
     ],
     "text": "on -> Freeze after 60 ms (sigmund~ needs fresh audio after unmute)"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dw-n",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "float"
     ],
     "patching_rect": [
      795.0,
      245.0,
      50.0,
      22.0
     ],
     "text": "/ 100."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "t-dw",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      795.0,
      275.0,
      70.0,
      22.0
     ],
     "text": "trigger f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "wet-x",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      835.0,
      305.0,
      150.0,
      22.0
     ],
     "text": "expr sin($f1*1.570796)"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "wet-m",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      835.0,
      335.0,
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
     "id": "wet-l",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      835.0,
      365.0,
      60.0,
      22.0
     ],
     "text": "line~ 1."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dry-pak",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      735.0,
      405.0,
      80.0,
      22.0
     ],
     "text": "pak 1. 1 1"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dry-x",
     "maxclass": "newobj",
     "numinlets": 3,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      735.0,
      430.0,
      290.0,
      22.0
     ],
     "text": "expr $i2*cos($f1*1.570796) + (1-$i2)*(1-$i3)"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dry-m",
     "maxclass": "message",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      735.0,
      455.0,
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
     "id": "dry-l",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 2,
     "outlettype": [
      "signal",
      "bang"
     ],
     "patching_rect": [
      735.0,
      480.0,
      60.0,
      22.0
     ],
     "text": "line~ 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "c-dw",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1035.0,
      430.0,
      380.0,
      20.0
     ],
     "text": "equal-power Dry/Wet; while off: Thru passes dry, Aux is silent"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dry-L",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      30.0,
      555.0,
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
     "id": "wet-L",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      90.0,
      555.0,
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
     "id": "sum-L",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      30.0,
      585.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "comment": "Left Out: audio",
     "id": "out-L",
     "index": 1,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      30.0,
      625.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "dry-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      560.0,
      555.0,
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
     "id": "wet-R",
     "maxclass": "newobj",
     "numinlets": 2,
     "numoutlets": 1,
     "outlettype": [
      "signal"
     ],
     "patching_rect": [
      620.0,
      555.0,
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
      560.0,
      585.0,
      40.0,
      22.0
     ],
     "text": "+~"
    }
   },
   {
    "box": {
     "comment": "Right Out: audio",
     "id": "out-R",
     "index": 2,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      560.0,
      625.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "annotation": "br.freeze.partials.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
     "background": 1,
     "bgcolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "bordercolor": [
      0.0,
      0.0,
      0.0,
      1.0
     ],
     "hint": "br.freeze.partials.1.3 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
     "id": "obj-panel",
     "maxclass": "panel",
     "mode": 0,
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      900.0,
      200.0,
      128.0,
      128.0
     ],
     "presentation": 1,
     "presentation_rect": [
      0.0,
      0.0,
      340.0,
      84.0
     ],
     "rounded": 7
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "det-b",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      "bang"
     ],
     "patching_rect": [
      1050.0,
      335.0,
      53.0,
      22.0
     ],
     "text": "trigger b"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "det-c",
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1100.0,
      335.0,
      330.0,
      20.0
     ],
     "text": "pipe sends a number (0); live.button needs a bang"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-pitch",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      285.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-pitch",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      285.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-pitch",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      285.0,
      180.0,
      95.0,
      22.0
     ],
     "text": "prepend pitch"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-hipass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      370.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-hipass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      370.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-hipass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      370.0,
      205.0,
      102.0,
      22.0
     ],
     "text": "prepend hipass"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-lopass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      455.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-lopass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      455.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-lopass",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      455.0,
      180.0,
      102.0,
      22.0
     ],
     "text": "prepend lopass"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-drive",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      540.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-drive",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      540.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-drive",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      540.0,
      205.0,
      95.0,
      22.0
     ],
     "text": "prepend drive"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-crossfade",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      625.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-crossfade",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      625.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-crossfade",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      625.0,
      180.0,
      123.0,
      22.0
     ],
     "text": "prepend crossfade"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-sensitivity",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      710.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-sensitivity",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      710.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-sensitivity",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      710.0,
      205.0,
      137.0,
      22.0
     ],
     "text": "prepend sensitivity"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-drywet",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      795.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-drywet",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      795.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-drywet",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      795.0,
      180.0,
      102.0,
      22.0
     ],
     "text": "prepend drywet"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-threshold",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "float",
      "float"
     ],
     "patching_rect": [
      880.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t f f"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-threshold",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      880.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0."
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-threshold",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      880.0,
      205.0,
      123.0,
      22.0
     ],
     "text": "prepend threshold"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-on",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      965.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-on",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      965.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-on",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      965.0,
      180.0,
      74.0,
      22.0
     ],
     "text": "prepend on"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-detect",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      1050.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-detect",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      1050.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-detect",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1050.0,
      205.0,
      102.0,
      22.0
     ],
     "text": "prepend detect"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-t-mode",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 2,
     "outlettype": [
      "int",
      "int"
     ],
     "patching_rect": [
      1135.0,
      130.0,
      40.0,
      22.0
     ],
     "text": "t i i"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-c-mode",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 3,
     "outlettype": [
      "",
      "int",
      "int"
     ],
     "patching_rect": [
      1135.0,
      155.0,
      62.0,
      22.0
     ],
     "text": "change 0"
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-p-mode",
     "maxclass": "newobj",
     "numinlets": 1,
     "numoutlets": 1,
     "outlettype": [
      ""
     ],
     "patching_rect": [
      1135.0,
      180.0,
      88.0,
      22.0
     ],
     "text": "prepend mode"
    }
   },
   {
    "box": {
     "comment": "State: each setting as <name> <value> the moment it changes (pitch, hipass, lopass, drive, crossfade, sensitivity, drywet, threshold, on, detect, mode). Freeze is an action, not a setting, so it is not sent. Levels is not sent (inlet only, no panel control).",
     "id": "st-out",
     "index": 3,
     "maxclass": "outlet",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1320.0,
      625.0,
      30.0,
      30.0
     ]
    }
   },
   {
    "box": {
     "fontname": "Arial",
     "fontsize": 12.0,
     "id": "st-note",
     "linecount": 3,
     "maxclass": "comment",
     "numinlets": 1,
     "numoutlets": 0,
     "patching_rect": [
      1360.0,
      625.0,
      300.0,
      47.0
     ],
     "text": "State outlet: each control -> t (engine first) -> change -> prepend <name>. Inlet numbers and panel moves are both reported."
    }
   }
  ],
  "lines": [
   {
    "patchline": {
     "destination": [
      "det-b",
      0
     ],
     "source": [
      "det",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-9",
      0
     ],
     "source": [
      "det-b",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum-L",
      0
     ],
     "source": [
      "dry-L",
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
      "dry-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-L",
      1
     ],
     "order": 1,
     "source": [
      "dry-l",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-R",
      1
     ],
     "order": 0,
     "source": [
      "dry-l",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-l",
      0
     ],
     "source": [
      "dry-m",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-x",
      0
     ],
     "source": [
      "dry-pak",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-m",
      0
     ],
     "source": [
      "dry-x",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-dw",
      0
     ],
     "source": [
      "dw-n",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-L",
      0
     ],
     "source": [
      "eng-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-R",
      0
     ],
     "source": [
      "eng-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-ob",
      1
     ],
     "source": [
      "frz-lock",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-t",
      0
     ],
     "source": [
      "frz-ob",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-lock",
      0
     ],
     "source": [
      "frz-t",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-t2",
      0
     ],
     "source": [
      "frz-t",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      1
     ],
     "source": [
      "frz-t2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      1
     ],
     "source": [
      "frz-t2",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "det",
      1
     ],
     "order": 0,
     "source": [
      "in-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-L",
      0
     ],
     "order": 2,
     "source": [
      "in-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      0
     ],
     "order": 1,
     "source": [
      "in-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "det",
      1
     ],
     "order": 0,
     "source": [
      "in-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-R",
      0
     ],
     "order": 2,
     "source": [
      "in-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      0
     ],
     "order": 1,
     "source": [
      "in-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "ui-det",
      0
     ],
     "source": [
      "in-det",
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
      "in-drv",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "ui-dw",
      0
     ],
     "source": [
      "in-dw",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-9",
      0
     ],
     "source": [
      "in-frz",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-11",
      0
     ],
     "source": [
      "in-hp",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-lev",
      0
     ],
     "source": [
      "in-lev",
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
      "in-lp",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "ui-mode",
      0
     ],
     "source": [
      "in-mode",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-19",
      0
     ],
     "source": [
      "in-on",
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
      "in-pit",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "ui-sen",
      0
     ],
     "source": [
      "in-sen",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "obj-21",
      0
     ],
     "source": [
      "in-thr",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "ui-xf",
      0
     ],
     "source": [
      "in-xf",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-pitch",
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
      "st-t-hipass",
      0
     ],
     "source": [
      "obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-lopass",
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
      "st-t-drive",
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
      "st-t-on",
      0
     ],
     "source": [
      "obj-19",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-threshold",
      0
     ],
     "source": [
      "obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-ob",
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
      "obj-9",
      0
     ],
     "source": [
      "on-dly",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "on-dly",
      0
     ],
     "source": [
      "on-sel",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "on-stop",
      0
     ],
     "source": [
      "on-sel",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "on-dly",
      0
     ],
     "source": [
      "on-stop",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "det",
      2
     ],
     "source": [
      "sen-inv",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-crossfade",
      0
     ],
     "source": [
      "st-c-crossfade",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-detect",
      0
     ],
     "source": [
      "st-c-detect",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-drive",
      0
     ],
     "source": [
      "st-c-drive",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-drywet",
      0
     ],
     "source": [
      "st-c-drywet",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-hipass",
      0
     ],
     "source": [
      "st-c-hipass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-lopass",
      0
     ],
     "source": [
      "st-c-lopass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-mode",
      0
     ],
     "source": [
      "st-c-mode",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-on",
      0
     ],
     "source": [
      "st-c-on",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-pitch",
      0
     ],
     "source": [
      "st-c-pitch",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-sensitivity",
      0
     ],
     "source": [
      "st-c-sensitivity",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-p-threshold",
      0
     ],
     "source": [
      "st-c-threshold",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-crossfade",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-detect",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-drive",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-drywet",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-hipass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-lopass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-mode",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-on",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-pitch",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-sensitivity",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-out",
      0
     ],
     "source": [
      "st-p-threshold",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-crossfade",
      0
     ],
     "source": [
      "st-t-crossfade",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-xf",
      0
     ],
     "source": [
      "st-t-crossfade",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "det",
      0
     ],
     "source": [
      "st-t-detect",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-detect",
      0
     ],
     "source": [
      "st-t-detect",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-drive",
      0
     ],
     "source": [
      "st-t-drive",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-obj-17",
      0
     ],
     "source": [
      "st-t-drive",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dw-n",
      0
     ],
     "source": [
      "st-t-drywet",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-drywet",
      0
     ],
     "source": [
      "st-t-drywet",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-hipass",
      0
     ],
     "source": [
      "st-t-hipass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-obj-11",
      0
     ],
     "source": [
      "st-t-hipass",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-lopass",
      0
     ],
     "source": [
      "st-t-lopass",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-obj-12",
      0
     ],
     "source": [
      "st-t-lopass",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-pak",
      2
     ],
     "source": [
      "st-t-mode",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-mode",
      0
     ],
     "source": [
      "st-t-mode",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-on",
      0
     ],
     "source": [
      "st-t-on",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-on",
      0
     ],
     "source": [
      "st-t-on",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-pitch",
      0
     ],
     "source": [
      "st-t-pitch",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-obj-10",
      0
     ],
     "source": [
      "st-t-pitch",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sen-inv",
      0
     ],
     "source": [
      "st-t-sensitivity",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-sensitivity",
      0
     ],
     "source": [
      "st-t-sensitivity",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-c-threshold",
      0
     ],
     "source": [
      "st-t-threshold",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-obj-21",
      0
     ],
     "source": [
      "st-t-threshold",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "out-L",
      0
     ],
     "source": [
      "sum-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "out-R",
      0
     ],
     "source": [
      "sum-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-pak",
      0
     ],
     "source": [
      "t-dw",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-x",
      0
     ],
     "source": [
      "t-dw",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      8
     ],
     "source": [
      "t-lev",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      8
     ],
     "source": [
      "t-lev",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      2
     ],
     "source": [
      "t-obj-10",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      2
     ],
     "source": [
      "t-obj-10",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      3
     ],
     "source": [
      "t-obj-11",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      3
     ],
     "source": [
      "t-obj-11",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      4
     ],
     "source": [
      "t-obj-12",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      4
     ],
     "source": [
      "t-obj-12",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      5
     ],
     "source": [
      "t-obj-17",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      5
     ],
     "source": [
      "t-obj-17",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      6
     ],
     "source": [
      "t-obj-21",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      6
     ],
     "source": [
      "t-obj-21",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "dry-pak",
      1
     ],
     "source": [
      "t-on",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "on-sel",
      0
     ],
     "source": [
      "t-on",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "t-on2",
      0
     ],
     "source": [
      "t-on",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      7
     ],
     "source": [
      "t-on2",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      7
     ],
     "source": [
      "t-on2",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-L",
      9
     ],
     "source": [
      "t-xf",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "eng-R",
      9
     ],
     "source": [
      "t-xf",
      1
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "xf-min",
      0
     ],
     "source": [
      "t-xf",
      2
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-detect",
      0
     ],
     "source": [
      "ui-det",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-drywet",
      0
     ],
     "source": [
      "ui-dw",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-mode",
      0
     ],
     "source": [
      "ui-mode",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-sensitivity",
      0
     ],
     "source": [
      "ui-sen",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "st-t-crossfade",
      0
     ],
     "source": [
      "ui-xf",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum-L",
      1
     ],
     "source": [
      "wet-L",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "sum-R",
      1
     ],
     "source": [
      "wet-R",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-L",
      1
     ],
     "order": 1,
     "source": [
      "wet-l",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-R",
      1
     ],
     "order": 0,
     "source": [
      "wet-l",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-l",
      0
     ],
     "source": [
      "wet-m",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "wet-m",
      0
     ],
     "source": [
      "wet-x",
      0
     ]
    }
   },
   {
    "patchline": {
     "destination": [
      "frz-lock",
      1
     ],
     "source": [
      "xf-min",
      0
     ]
    }
   }
  ]
 }
}