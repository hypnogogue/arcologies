local parameters = {}

function parameters.init()
  parameters.bpm_to_seconds = 0
  params:bang()
  params:set("bpm", math.random(20, 240))
end

params:add_separator("ARCOLOGIES")
params:add{ type = "number", id = "bpm", name = "BPM",
  min = 20, max = 240, default = 120,
  action = function(x) parameters.bpm_to_seconds = 60 / x end
}
params:add{ type = "number", id = "seed", name = "SEED",
  min = 0, max = math.floor(fn.grid_width() * fn.grid_height() / 4), default = 13
}

params:add_option("crow_out", "CROW", {"ENABLED", "DISABLED"}, 1)
params:add_option("just_friends_out", "JUST FRIENDS", {"ENABLED", "DISABLED"}, 1)
params:add_option("midi_out", "MIDI", {"ENABLED", "DISABLED"}, 1)

return parameters