hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
  },
  no_anim = true,
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})

local status, err = pcall(require, "noctalia")
if not status then
    print("Could not find noctalia hyprland config")
end

hl.config({
  -- Other configuration settings...

  general = {
    gaps_in = 4,
    gaps_out = 8,
  },

  decoration = {
    -- Noctalia Standard Rounding
    rounding = 8,
    rounding_power = 2,

    -- Window Transparency (Adjust active/inactive opacity as preferred)
    active_opacity = 0.95,
    inactive_opacity = 0.75,

    -- Blur effects for transparent backgrounds
    blur = {
      enabled = true,
      size = 8,
      passes = 1,
      vibrancy = 0.2,
    },
  },
})
