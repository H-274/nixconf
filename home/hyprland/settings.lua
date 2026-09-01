-- Largely from https://github.com/fufexan/dotfiles
--
--------------------------
------- VARIABLES --------
--------------------------
rounding = 10
rounding_power = 2.5

gaps_in = 4
gaps_out = 8

--------------------------
---- GENERAL SETTINGS ----
--------------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")
end)

hl.config({
    general = {
        gaps_in = gaps_in,
        gaps_out = gaps_out,
        border_size = 1,
        allow_tearing = true,
        resize_on_border = true
    },

    decoration = {
        rounding = rounding,
        rounding_power = rounding_power,
        blur = {
            enabled = true,
            brightness = 1.0,
            contrast = 1.0,
            noise = 0.01,
            vibrancy = 0.2,
            vibrancy_darkness = 0.5,
            passes = 4,
            size = 7,
            popups = true,
            popups_ignorealpha = 0.2
        },
        shadow = {
            enabled = true,
            color = "rgba(00000000)",
            offset = {0, 15},
            range = 100,
            render_power = 2,
            scale = 0.97
        }
    },

    animations = {
        enabled = true
    },

    gestures = {
        workspace_swipe_forever = true
    },

    xwayland = {
        force_zero_scaling = true
    },

    debug = {
        disable_logs = false
    }
})

--------------------
---- GESTURES ------
--------------------
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
hl.gesture({
    fingers = 4,
    direction = "left",
    action = function()
        hl.dsp.window.move({
            monitor = "-1"
        })
    end
})
hl.gesture({
    fingers = 4,
    direction = "right",
    action = function()
        hl.dsp.window.move({
            monitor = "+1"
        })
    end
})
hl.gesture({
    fingers = 4,
    direction = "pinch",
    action = function()
        hl.dsp.window.fullscreen()
    end
})
