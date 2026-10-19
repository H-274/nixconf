hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

local status, err = pcall(require, "noctalia")
if not status then
    print("Could not find noctalia hyprland config")
end

hl.config({
    general = {
        gaps_in = 4,
        gaps_out = 8
    },

    decoration = {
        rounding = 8,
        rounding_power = 2,

        active_opacity = 0.95,
        inactive_opacity = 0.75,

        blur = {
            enabled = true,
            size = 8,
            passes = 1,
            vibrancy = 0.2
        }
    }
})
