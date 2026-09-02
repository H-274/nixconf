-- Largely from https://github.com/fufexan/dotfiles
--
---------------------
---- KEYBINDINGS ----
---------------------
local mod = "SUPER"
local ipc = "noctalia msg "

-- mouse movements
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(), {
    mouse = true
})
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), {
    mouse = true
})
hl.bind(mod .. " + ALT + mouse:272", hl.dsp.window.resize(), {
    mouse = true
})

-- app shortcuts
hl.bind(mod .. " + Return", hl.dsp.exec_cmd("kitty"))

-- core binds
hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+S", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))

-- media keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))

-- noctalia Settings
hl.window_rule({
    match = {
        class = "dev.noctalia.Noctalia"
    },
    float = true,
    size = {1080, 920}
})

-- compositor commands
hl.bind(mod .. " + SHIFT + E", hl.dsp.exec_cmd("pkill Hyprland"))
hl.bind(mod .. " + Q", hl.dsp.window.close())
hl.bind(mod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mod .. " + G", hl.dsp.group.toggle())
hl.bind(mod .. " + SHIFT + N", hl.dsp.group.next())
hl.bind(mod .. " + SHIFT + P", hl.dsp.group.prev())
hl.bind(mod .. " + R", hl.dsp.layout("togglesplit"))
hl.bind(mod .. " + T", hl.dsp.window.float({
    action = "toggle"
}))
hl.bind(mod .. " + P", hl.dsp.window.pseudo())

-- move focus
hl.bind(mod .. " + left", hl.dsp.focus({
    direction = "l"
}))
hl.bind(mod .. " + right", hl.dsp.focus({
    direction = "r"
}))
hl.bind(mod .. " + up", hl.dsp.focus({
    direction = "u"
}))
hl.bind(mod .. " + down", hl.dsp.focus({
    direction = "d"
}))

-- cycle workspaces
hl.bind(mod .. " + bracketleft", hl.dsp.focus({
    workspace = "m-1"
}))
hl.bind(mod .. " + bracketright", hl.dsp.focus({
    workspace = "m+1"
}))

-- cycle monitors
hl.bind(mod .. " + SHIFT + bracketleft", hl.dsp.focus({
    monitor = "l"
}))
hl.bind(mod .. " + SHIFT + bracketright", hl.dsp.focus({
    monitor = "r"
}))

-- send focused workspace to left/right monitors
hl.bind(mod .. " + SHIFT + ALT + bracketleft", hl.dsp.workspace.move({
    monitor = "l"
}))
hl.bind(mod .. " + SHIFT + ALT + bracketright", hl.dsp.workspace.move({
    monitor = "r"
}))

-- workspaces 1-10
for i = 1, 10 do
    local key = i % 10
    hl.bind(mod .. " + " .. key, hl.dsp.focus({
        workspace = i
    }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({
        workspace = i
    }))
end
