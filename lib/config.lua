config = {}

config["settings"] = {
  ["version_major"] = 1,
  ["version_minor"] = 0,
  ["version_patch"] = 6,
  ["playback"] = 0,
  ["length"] = 16,
  ["root"] = 0,
  ["scale"] = 1,
  ["octaves"] = 11,
  ["delete_all_length"] = 3,
  ["save_path"] = _path.audio .. "arcologies/",
  ["crypt_path"] =  _path.audio .. "arcologies/crypt/",
  ["crypt_default_name"] = "DEFAULT",
  ["crypts_path"] =  _path.audio .. "crypts/"
}

config["outputs"] = {
  ["midi"] = true,
  ["crow"] = true,
  ["jf"] = true
}

config["page_titles"] = {
  "ARCOLOGIES",
  "DESIGNER",
  "ANALYSIS"
}
if config.settings.dev_mode then
  table.insert(config.page_titles, "DEV")
end

config["home_items"] = {
  "BPM",
  "LENGTH",
  "ROOT",
  "SCALE",
  "DOCS"
}

config["structures"] = {
  "HIVE",
  "SHRINE",
  "GATE",
  "RAVE",
  "TOPIARY",
  "DOME",
  "MAZE",
  "CRYPT",
  "VALE",
  "SOLARIUM",
  "UXB",
  "CASINO",
  "TUNNEL",
  "AVIARY",
  "FOREST",
  "HYDROPONICS",
  "INSTITUTION",
  "MIRAGE",
  "BANK",
  "AUTON"
}

config["analysis_items"] = {
  "SIGNALS"
}
for k,v in pairs(config["structures"]) do
  table.insert(config["analysis_items"], v)
end

config["attributes"] = {
  "AMORTIZE", -- new
  "CAPACITY",
  "CHARGE",
  "CROW OUT",
  "CRUMBLE", -- new
  "DEFLECT", -- new
  "DEPRECIATE", -- new
  "DOCS",
  "DRIFT", --new
  "DURATION",
  "INDEX",
  "INTEREST", -- new
  "LEVEL",
  "METABOLISM",
  "NET INCOME", -- new
  "NETWORK",
  "NOTES",
  "OFFSET",
  "OPERATOR", -- new
  "PULSES",
  "RANGE MAX",
  "RANGE MIN",
  "STRUCTURE",
  "TAXES", -- new
  "TERRITORY", -- new
  "VELOCITY"
}

config["structure_attribute_map"] = {
  ["HIVE"] = {
    "METABOLISM",
    "OFFSET",
    "DOCS",
    "STRUCTURE"
  },
  ["SHRINE"] = {
    "NOTES",
    "VELOCITY",
    "DOCS",
    "STRUCTURE"
  },
  ["GATE"] = {
    "DOCS",
    "STRUCTURE"
  },
  ["RAVE"] = {
    "METABOLISM",
    "OFFSET",
    "DOCS",
    "STRUCTURE"
  },
  ["TOPIARY"] = {
    "INDEX",
    "NOTES",
    "VELOCITY",
    "DOCS",
    "STRUCTURE"
    },
  ["DOME"] = {
    "METABOLISM",
    "OFFSET",
    "PULSES",
    "DOCS",
    "STRUCTURE"
  },
  ["MAZE"] = {
    "METABOLISM",
    "OFFSET",
    "PROBABILITY",
    "DOCS",
    "STRUCTURE"
  },
  ["CRYPT"] = {
    "INDEX",
    "LEVEL",
    "DOCS",
    "STRUCTURE"
  },
  ["VALE"] = {
    "RANGE MIN",
    "RANGE MAX",
    "VELOCITY",
    "DOCS",
    "STRUCTURE"
  },
  ["SOLARIUM"] = {
    "CHARGE",
    "CAPACITY",
    "DOCS",
    "STRUCTURE"
  },
  ["UXB"] = {
    "NOTES",
    "VELOCITY",
    "DURATION",
    "DEVICE",
    "DOCS",
    "STRUCTURE"
  },
  ["CASINO"] = {
    "INDEX",
    "NOTES",
    "DURATION",
    "VELOCITY",
    "DEVICE",
    "DOCS",
    "STRUCTURE"
  },
  ["TUNNEL"] = {
    "NETWORK",
    "DOCS",
    "STRUCTURE"
  },
  ["AVIARY"] = {
    "NOTES",
    "VELOCITY",
    "CROW OUT",
    "DOCS",
    "STRUCTURE"
  },
  ["FOREST"] = {
    "INDEX",
    "NOTES",
    "CROW OUT",
    "DOCS",
    "STRUCTURE"
  },
  ["HYDROPONICS"] = {
    "METABOLISM",
    "OPERATOR",
    "TERRITORY",
    "DOCS",
    "STRUCTURE"
  },
  ["INSTITUTION"] = {
    "CRUMBLE",
    "DEFLECT",
    "DOCS",
    "STRUCTURE"
  },
  ["MIRAGE"] = {
    "METABOLISM",
    "DRIFT",
    "DOCS",
    "STRUCTURE"
  },
  ["BANK"] = {
    "NET INCOME",
    "INTEREST",
    "TAXES",
    "DEPRECIATE",
    "AMORTIZE",
    "DOCS",
    "STRUCTURE"
  },
  ["AUTON"] = {
    "INDEX",
    "NOTES",
    "DOCS",
    "STRUCTURE"
  }
}

local note_message = {
  ["start"] = "NOTE...",
  ["abort"] = "ABORTED",
  ["done"] = "CHOSE"
}

config["popup_messages"] = {
  ["delete_all"] = {
    ["start"] = "DELETING ALL IN...",
    ["abort"] = "ABORTED",
    ["done"] = "DELETED ALL CELLS"
  },
  ["structure"] = {
    ["start"] = "",
    ["abort"] = "",
    ["done"] = "CHOSE"
  },
  ["note1"] = note_message,
  ["note2"] = note_message,
  ["note3"] = note_message,
  ["note4"] = note_message,
  ["note5"] = note_message,
  ["note6"] = note_message,
  ["note7"] = note_message,
  ["note8"] = note_message
}

return config