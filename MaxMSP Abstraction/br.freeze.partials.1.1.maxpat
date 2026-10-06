{
    "patcher": {
"description" : "br.freeze.partials.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
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
        "boxes": [
{"box": {"id": "obj-signature", "maxclass": "comment", "numinlets": 1, "numoutlets": 0, "patching_rect": [1320.0, 20.0, 520.0, 120.0], "text": "br.freeze.partials.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.", "linecount": 6}},

            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-L",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        30.0,
                        20.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left In: audio. For a mono source, connect it to both Left and Right"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-R",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        115.0,
                        20.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right In: audio"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-frz",
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
                    ],
                    "comment": "Freeze: bang captures the partials sounding now (ignored during a crossfade)"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-pit",
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
                    ],
                    "comment": "Pitch: float, -36 - 36 semitones, default 0"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-hp",
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
                    ],
                    "comment": "Hi-Pass (input): float, 20 - 20000 Hz, default 40"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-lp",
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
                    ],
                    "comment": "Lo-Pass (output): float, 100 - 20000 Hz, default 20000"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-drv",
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
                    ],
                    "comment": "Drive (fold amount): float, 1 - 16, default 1"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-xf",
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
                    ],
                    "comment": "Crossfade: float, 0 - 10000 ms, default 0. 0 = quick glide; above 0 each Freeze fades the old chord out and the new one in"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-sen",
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
                    ],
                    "comment": "Sensitivity (Detect): float, 0 - 1, higher = softer attacks freeze, default 0.5"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-dw",
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
                    ],
                    "comment": "Dry/Wet: float, 0 - 100 %, default 100"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-thr",
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
                    ],
                    "comment": "Threshold: float, -100 - 0 dB, default -60. Quieter partials never get a voice"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-on",
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
                    ],
                    "comment": "On/Off: int 0 / 1, default 1. 0 = off (no CPU); 1 = on + freezes right away"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-det",
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
                    ],
                    "comment": "Detect: int 0 / 1, default 0. 1 = freeze automatically on every attack"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-mode",
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
                    ],
                    "comment": "Mode: int 0 = Insert (dry passes while off), 1 = Gate (silent while off), default 1"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "in-lev",
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
                    ],
                    "comment": "Levels: list of 16 floats 0 - 1 (voices low -> high partial, both sides), default all 1. Connect your own multislider here"
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
                            "parameter_longname": "Partials-Freeze",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Freeze",
                            "parameter_type": 2
                        }
                    },
                    "varname": "partials-freeze"
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
                            "parameter_longname": "Partials-Pitch",
                            "parameter_mmax": 36.0,
                            "parameter_mmin": -36.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Pitch",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "partials-pitch"
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
                            "parameter_longname": "Partials-HiPass",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Hi-Pass",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "partials-hipass"
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
                            "parameter_longname": "Partials-LoPass",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Lo-Pass",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "partials-lopass"
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
                            "parameter_longname": "Partials-Drive",
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
                    "varname": "partials-drive"
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
                            "parameter_longname": "Partials-Thresh",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Thresh",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "partials-thresh"
                }
            },
            {
                "box": {
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
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Partials-OnOff",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On",
                            "parameter_type": 2
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_numbox_triangle"
                        }
                    },
                    "text": "Freeze.Partials",
                    "texton": "Freeze.Partials",
                    "varname": "partials-on",
                    "activebgoncolor": [
                        0.618934978328545,
                        0.744701397656435,
                        0.953750108255376,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        900.0,
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
                        900.0,
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
                        900.0,
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
                        900.0,
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
                    "maxclass": "live.dial",
                    "id": "ui-xf",
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
                    "varname": "partials-xfade",
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
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
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Partials-XFade",
                            "parameter_shortname": "X-Fade",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 10000.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 2,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "ui-sen",
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
                    "varname": "partials-sens",
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
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
                            "parameter_longname": "Partials-Sens",
                            "parameter_shortname": "Sens",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 1.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "ui-dw",
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
                    "varname": "partials-drywet",
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
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
                            "parameter_longname": "Partials-DryWet",
                            "parameter_shortname": "Dry/Wet",
                            "parameter_mmin": 0.0,
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "ui-det",
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
                    "text": "Detect",
                    "texton": "Detect",
                    "varname": "partials-detect",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Partials-Detect",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Detect",
                            "parameter_type": 2
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_numbox_triangle"
                        }
                    },
                    "activebgoncolor": [
                        0.618934978328545,
                        0.744701397656435,
                        0.953750108255376,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "ui-mode",
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
                    "text": "Insert",
                    "texton": "Gate",
                    "varname": "partials-mode",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "insert",
                                "gate"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Partials-Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mode",
                            "parameter_type": 2
                        },
                        "activebgoncolor": {
                            "expression": "themecolor.live_numbox_triangle"
                        }
                    },
                    "activebgoncolor": [
                        0.618934978328545,
                        0.744701397656435,
                        0.953750108255376,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "eng-L",
                    "numinlets": 10,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        400.0,
                        200.0,
                        22.0
                    ],
                    "text": "br.freeze.partials.engine.1.1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "eng-R",
                    "numinlets": 10,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        560.0,
                        400.0,
                        200.0,
                        22.0
                    ],
                    "text": "br.freeze.partials.engine.1.1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-obj-10",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        285.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-obj-11",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        370.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-obj-12",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        455.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-obj-17",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-obj-21",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        880.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-lev",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        1220.0,
                        140.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger l l",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "frz-ob",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        200.0,
                        140.0,
                        75.0,
                        22.0
                    ],
                    "text": "onebang 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "frz-t",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        200.0,
                        170.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger b b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "frz-lock",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        280.0,
                        200.0,
                        60.0,
                        22.0
                    ],
                    "text": "delay 20",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "frz-t2",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        "bang"
                    ],
                    "patching_rect": [
                        200.0,
                        230.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger b b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "c-frz",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        280.0,
                        230.0,
                        280.0,
                        20.0
                    ],
                    "text": "lockout: a Freeze during a crossfade is dropped",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-xf",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "float",
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        625.0,
                        140.0,
                        80.0,
                        22.0
                    ],
                    "text": "trigger f f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "xf-min",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        655.0,
                        170.0,
                        80.0,
                        22.0
                    ],
                    "text": "maximum 20.",
                    "fontname": "Arial",
                    "fontsize": 12.0
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
                                        ""
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
                                    "linecount": 5,
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
                        200.0,
                        150.0,
                        22.0
                    ],
                    "text": "p Detect"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "sen-inv",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        710.0,
                        140.0,
                        110.0,
                        22.0
                    ],
                    "text": "scale 0. 1. 1. 0.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-on",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        965.0,
                        140.0,
                        80.0,
                        22.0
                    ],
                    "text": "trigger i i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-on2",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        965.0,
                        300.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger i i",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "on-sel",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "bang",
                        ""
                    ],
                    "patching_rect": [
                        1055.0,
                        170.0,
                        60.0,
                        22.0
                    ],
                    "text": "select 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "on-dly",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1055.0,
                        230.0,
                        60.0,
                        22.0
                    ],
                    "text": "delay 60",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "message",
                    "id": "on-stop",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1125.0,
                        200.0,
                        38.0,
                        22.0
                    ],
                    "text": "stop",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "c-on",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1055.0,
                        255.0,
                        300.0,
                        20.0
                    ],
                    "text": "on -> Freeze after 60 ms (sigmund~ needs fresh audio after unmute)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dw-n",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        795.0,
                        140.0,
                        50.0,
                        22.0
                    ],
                    "text": "/ 100.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "t-dw",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        795.0,
                        170.0,
                        70.0,
                        22.0
                    ],
                    "text": "trigger f f",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "wet-x",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        835.0,
                        200.0,
                        150.0,
                        22.0
                    ],
                    "text": "expr sin($f1*1.570796)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "message",
                    "id": "wet-m",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        835.0,
                        230.0,
                        45.0,
                        22.0
                    ],
                    "text": "$1 50",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "wet-l",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        835.0,
                        260.0,
                        60.0,
                        22.0
                    ],
                    "text": "line~ 1.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dry-pak",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        735.0,
                        300.0,
                        80.0,
                        22.0
                    ],
                    "text": "pak 1. 1 1",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dry-x",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        735.0,
                        325.0,
                        290.0,
                        22.0
                    ],
                    "text": "expr $i2*cos($f1*1.570796) + (1-$i2)*(1-$i3)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "message",
                    "id": "dry-m",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        735.0,
                        350.0,
                        45.0,
                        22.0
                    ],
                    "text": "$1 50",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dry-l",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "bang"
                    ],
                    "patching_rect": [
                        735.0,
                        375.0,
                        60.0,
                        22.0
                    ],
                    "text": "line~ 0.",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "c-dw",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1035.0,
                        325.0,
                        380.0,
                        20.0
                    ],
                    "text": "equal-power Dry/Wet; while off: Insert passes dry, Gate is silent",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dry-L",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        450.0,
                        40.0,
                        22.0
                    ],
                    "text": "*~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "wet-L",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        450.0,
                        40.0,
                        22.0
                    ],
                    "text": "*~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "sum-L",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        30.0,
                        480.0,
                        40.0,
                        22.0
                    ],
                    "text": "+~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "out-L",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        520.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Left Out: audio"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "dry-R",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        560.0,
                        450.0,
                        40.0,
                        22.0
                    ],
                    "text": "*~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "wet-R",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        620.0,
                        450.0,
                        40.0,
                        22.0
                    ],
                    "text": "*~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "sum-R",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        560.0,
                        480.0,
                        40.0,
                        22.0
                    ],
                    "text": "+~",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "out-R",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        560.0,
                        520.0,
                        30.0,
                        30.0
                    ],
                    "comment": "Right Out: audio"
                }
            },
            {
                "box": {
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
                    "id": "obj-panel", "hint" : "br.freeze.partials.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.", "annotation" : "br.freeze.partials.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: partial tracking by sigmund~ (Miller Puckette; 64-bit Max port by Volker Böhm; builds from Isabel Kaspriskie's mp-objects), see sigmund~ CREDITS.md. Wavefolding uses antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016), in the style of the Buchla 259. The freeze engine, voices, crossfade, detect and panel are by Brian Riordan.",
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
                    "maxclass": "newobj",
                    "id": "det-b",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1050.0,
                        230.0,
                        40.0,
                        22.0
                    ],
                    "text": "trigger b",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "det-c",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1100.0,
                        230.0,
                        330.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "text": "pipe sends a number (0); live.button needs a bang"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "in-L",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-R",
                        0
                    ],
                    "destination": [
                        "eng-R",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-pit",
                        0
                    ],
                    "destination": [
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "t-obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-10",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-10",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-hp",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "t-obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-11",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-11",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-lp",
                        0
                    ],
                    "destination": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "t-obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-12",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-12",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-drv",
                        0
                    ],
                    "destination": [
                        "obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-17",
                        0
                    ],
                    "destination": [
                        "t-obj-17",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-17",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-17",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-thr",
                        0
                    ],
                    "destination": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-21",
                        0
                    ],
                    "destination": [
                        "t-obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-21",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-obj-21",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-lev",
                        0
                    ],
                    "destination": [
                        "t-lev",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-lev",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-lev",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-frz",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "frz-ob",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-ob",
                        0
                    ],
                    "destination": [
                        "frz-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-t",
                        1
                    ],
                    "destination": [
                        "frz-lock",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-lock",
                        0
                    ],
                    "destination": [
                        "frz-ob",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-t",
                        0
                    ],
                    "destination": [
                        "frz-t2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-t2",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "frz-t2",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-xf",
                        0
                    ],
                    "destination": [
                        "ui-xf",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ui-xf",
                        0
                    ],
                    "destination": [
                        "t-xf",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-xf",
                        2
                    ],
                    "destination": [
                        "xf-min",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "xf-min",
                        0
                    ],
                    "destination": [
                        "frz-lock",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-xf",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-xf",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-det",
                        0
                    ],
                    "destination": [
                        "ui-det",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ui-det",
                        0
                    ],
                    "destination": [
                        "det",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-L",
                        0
                    ],
                    "destination": [
                        "det",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-R",
                        0
                    ],
                    "destination": [
                        "det",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-sen",
                        0
                    ],
                    "destination": [
                        "ui-sen",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ui-sen",
                        0
                    ],
                    "destination": [
                        "sen-inv",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "sen-inv",
                        0
                    ],
                    "destination": [
                        "det",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-on",
                        0
                    ],
                    "destination": [
                        "obj-19",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-19",
                        0
                    ],
                    "destination": [
                        "t-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-on",
                        2
                    ],
                    "destination": [
                        "on-sel",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "on-sel",
                        0
                    ],
                    "destination": [
                        "on-dly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "on-sel",
                        1
                    ],
                    "destination": [
                        "on-stop",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "on-stop",
                        0
                    ],
                    "destination": [
                        "on-dly",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "on-dly",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-on",
                        0
                    ],
                    "destination": [
                        "t-on2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-on2",
                        1
                    ],
                    "destination": [
                        "eng-R",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-on2",
                        0
                    ],
                    "destination": [
                        "eng-L",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-dw",
                        0
                    ],
                    "destination": [
                        "ui-dw",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ui-dw",
                        0
                    ],
                    "destination": [
                        "dw-n",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dw-n",
                        0
                    ],
                    "destination": [
                        "t-dw",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-dw",
                        1
                    ],
                    "destination": [
                        "wet-x",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-x",
                        0
                    ],
                    "destination": [
                        "wet-m",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-m",
                        0
                    ],
                    "destination": [
                        "wet-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-mode",
                        0
                    ],
                    "destination": [
                        "ui-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-dw",
                        0
                    ],
                    "destination": [
                        "dry-pak",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "t-on",
                        1
                    ],
                    "destination": [
                        "dry-pak",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ui-mode",
                        0
                    ],
                    "destination": [
                        "dry-pak",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-pak",
                        0
                    ],
                    "destination": [
                        "dry-x",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-x",
                        0
                    ],
                    "destination": [
                        "dry-m",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-m",
                        0
                    ],
                    "destination": [
                        "dry-l",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-L",
                        0
                    ],
                    "destination": [
                        "dry-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-l",
                        0
                    ],
                    "destination": [
                        "dry-L",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "eng-L",
                        0
                    ],
                    "destination": [
                        "wet-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-l",
                        0
                    ],
                    "destination": [
                        "wet-L",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-L",
                        0
                    ],
                    "destination": [
                        "sum-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-L",
                        0
                    ],
                    "destination": [
                        "sum-L",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "sum-L",
                        0
                    ],
                    "destination": [
                        "out-L",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-R",
                        0
                    ],
                    "destination": [
                        "dry-R",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-l",
                        0
                    ],
                    "destination": [
                        "dry-R",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "eng-R",
                        0
                    ],
                    "destination": [
                        "wet-R",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-l",
                        0
                    ],
                    "destination": [
                        "wet-R",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "dry-R",
                        0
                    ],
                    "destination": [
                        "sum-R",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "wet-R",
                        0
                    ],
                    "destination": [
                        "sum-R",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "sum-R",
                        0
                    ],
                    "destination": [
                        "out-R",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "det",
                        0
                    ],
                    "destination": [
                        "det-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "det-b",
                        0
                    ],
                    "destination": [
                        "obj-9",
                        0
                    ]
                }
            }
        ],
        "rect": [
            60.0,
            80.0,
            1350.0,
            600.0
        ]
    }
}