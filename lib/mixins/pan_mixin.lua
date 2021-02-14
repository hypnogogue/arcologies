pan_mixin = {}

pan_mixin.init = function(self)

  self.setup_pan = function(self)
    self.pan_key = "PAN"
    self.pan = 0
    self.pan_min = -100
    self.pan_max = 100
    self:register_save_key("pan")
    self:register_menu_getter(self.pan_key, self.pan_menu_getter)
    self:register_menu_setter(self.pan_key, self.pan_menu_setter)
    self:register_arc_style({
      key = self.pan_key,
      style_getter = function() return "glowing_segment" end,
      style_max_getter = function() return 240 end,
      sensitivity = .5,
      offset = 240,
      wrap = false,
      snap = false,
      min = self.pan_min,
      max = self.pan_max,
      value_getter = self.get_pan,
      value_setter = self.set_pan
    })
    self:register_modulation_target({
      key = self.pan_key,
      inc = self.pan_increment,
      dec = self.pan_decrement
    })
  end

  self.pan_increment = function(self, i)
    local value = i ~= nil and i or 1
    self:set_pan(self:get_pan() + value)
  end

  self.pan_decrement = function(self, i)
    local value = i ~= nil and i or 1
    self:set_pan(self:get_pan() - value)
  end

  self.get_pan = function(self)
    return self.pan
  end

  self.set_pan = function(self, i)
    self.pan = util.clamp(i, self.pan_min, self.pan_max)
    self.callback(self, "set_pan")
  end

  self.pan_menu_getter = function(self)
    return self:get_pan()
  end

  self.pan_menu_setter = function(self, i)
    self:set_pan(self.pan + i)
  end

end