local parameters = {}

function parameters.init()
  params:add_separator("A R C O L O G I E S")

  params:add_trigger('save_p', "< SAVE" )
  params:set_action('save_p', function(x) textentry.enter(orca.save_project,  orca.project) end)
  params:add_trigger('load_p', "> LOAD" )
  params:set_action('load_p', function(x) fileselect.enter(norns.state.data, orca.load_project) end)
  params:add_trigger('new', "+ NEW" )
  params:set_action('new', function(x) init() end)

  parameters.bpm_to_seconds = 0
  params:add{ type = "number", id = "bpm", name = "BPM",
    min = 20, max = 240, default = 120,
    action = function(i) parameters.bpm_to_seconds = 60 / i end
  }

  params:add{ type = "number", id = "seed", name = "SEED",
    min = 0, max = 32, default = 16
  }
  params:hide("seed")

  parameters.is_splash_screen_on = true
  params:add_option("splash_screen", "SPLASH SCREEN", {"ENABLED", "DISABLED"})
  params:set_action("splash_screen", function(index) parameters.is_splash_screen_on = index == 1 and true or false end)


  params:add_option("crypts_directory", "CRYPT(S)", filesystem.crypts_names, 1)
  params:set_action("crypts_directory", function(index) filesystem:set_crypt(index) end)

  params:default()
  params:bang()
end

return parameters