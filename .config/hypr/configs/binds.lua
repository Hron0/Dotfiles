---@module 'hl'

-- https://wiki.hypr.land/Configuring/Binds/

local MOD = "SUPER"

-- Reload hyprland config
hl.bind(MOD .. " + CTRL + R", hl.dsp.reload_config())

hl.bind(MOD .. " + C", hl.dsp.window.close())
hl.bind(MOD .. " + SHIFT + C", hl.dsp.window.kill())

hl.bind(MOD .. " + RETURN", hl.dsp.exec_cmd("alacritty"))
hl.bind(MOD .. " + SHIFT + RETURN", hl.dsp.exec_cmd("alacritty", { float = true }))

hl.bind(MOD .. " + X", hl.dsp.exec_cmd("dms ipc call lock lock"))
hl.bind(MOD .. " + D", hl.dsp.exec_cmd("~/.config/rofi/bin/drun"))
hl.bind(MOD .. " + SHIFT + F", hl.dsp.exec_cmd("firefox"))
hl.bind(MOD .. " + SHIFT + N", hl.dsp.exec_cmd("nautilus"))
hl.bind(MOD .. " + SHIFT + V", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(MOD .. " + SHIFT + P", hl.dsp.exec_cmd('dms ipc call bar toggle name "Main Bar"'))
hl.bind(MOD .. " + SHIFT + T", hl.dsp.exec_cmd("Telegram"))

-- Window manipulations

hl.bind(MOD .. " + Tab", hl.dsp.focus({ workspace = "previous" }))

hl.bind(MOD .. " + W", hl.dsp.window.center())
hl.bind(MOD .. " + U", hl.dsp.window.pin())
hl.bind(MOD .. " + T", hl.dsp.window.pseudo())

hl.bind(MOD .. " + SPACE", function()
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
    hl.dispatch(hl.dsp.window.center())
end)

-- Resize window
hl.bind(MOD .. " + CTRL + right", hl.dsp.window.resize({ x = 70, y = 0, relative = true }))
hl.bind(MOD .. " + CTRL + left", hl.dsp.window.resize({ x = -70, y = 0, relative = true }))
hl.bind(MOD .. " + CTRL + up", hl.dsp.window.resize({ x = 0, y = -70, relative = true }))
hl.bind(MOD .. " + CTRL + down", hl.dsp.window.resize({ x = 0, y = 70, relative = true }))

hl.bind(MOD .. " + F", hl.dsp.window.fullscreen())

-- dwindle only
hl.bind(MOD .. " + A", hl.dsp.layout("swapsplit"))
hl.bind(MOD .. " + Z", hl.dsp.layout("togglesplit"))

-- Waybar
hl.bind(MOD .. " + P", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(MOD .. " + CTRL + P", hl.dsp.exec_cmd("~/.local/bin/restart_waybar"))

-- master layout only (disabled — general.layout is dwindle)
-- hl.bind(MOD .. " + A", hl.dsp.layout("rollprev"))
-- hl.bind(MOD .. " + X", hl.dsp.layout("swapwithmaster master"))
-- hl.bind(MOD .. " + D", hl.dsp.layout("rollnext"))
-- hl.bind(MOD .. " + SHIFT + A", hl.dsp.layout("cycleprev"))
-- hl.bind(MOD .. " + SHIFT + X", hl.dsp.layout("focusmaster"))
-- hl.bind(MOD .. " + SHIFT + D", hl.dsp.layout("cyclenext"))

hl.bind(MOD .. " + SHIFT + E", hl.dsp.exec_cmd("~/.local/bin/toggle_rofi ~/.local/bin/bookmarks"))
hl.bind(MOD .. " + Y", hl.dsp.exec_cmd("~/.local/bin/toggle_rofi python3 ~/.local/bin/auto_walls/rofi_selector.py"))

-- Volume and gaps. These were `binde`, so they repeat while held.
hl.bind(MOD .. " + MINUS", hl.dsp.exec_cmd("~/.local/bin/change_volume -2"), { repeating = true })
hl.bind(MOD .. " + EQUAL", hl.dsp.exec_cmd("~/.local/bin/change_volume +2"), { repeating = true })
hl.bind(MOD .. " + SHIFT + MINUS", hl.dsp.exec_cmd("~/.config/hypr/scripts/resize_gaps in -2"), { repeating = true })
hl.bind(MOD .. " + CTRL + MINUS", hl.dsp.exec_cmd("~/.config/hypr/scripts/resize_gaps out -2"), { repeating = true })
hl.bind(MOD .. " + SHIFT + EQUAL", hl.dsp.exec_cmd("~/.config/hypr/scripts/resize_gaps in 2"), { repeating = true })
hl.bind(MOD .. " + CTRL + EQUAL", hl.dsp.exec_cmd("~/.config/hypr/scripts/resize_gaps out 2"), { repeating = true })

hl.bind(MOD .. " + period", hl.dsp.exec_cmd("playerctl next"))
hl.bind(MOD .. " + comma", hl.dsp.exec_cmd("playerctl previous"))
hl.bind(MOD .. " + slash", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind(MOD .. " + SHIFT + slash", hl.dsp.exec_cmd("python3 ~/.local/bin/auto_walls/toggle_timer.py"))

hl.bind(MOD .. " + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/change_wallpaper.sh"))

-- Screenshot / video recording
hl.bind("Print", hl.dsp.exec_cmd("flameshot gui"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("~/.local/bin/screenshot --select"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("~/.local/bin/toggle_recording"))
hl.bind("CTRL + SHIFT + Print", hl.dsp.exec_cmd("~/.local/bin/toggle_recording --select"))

-- Toggle window tags
hl.bind(MOD .. " + 0", hl.dsp.window.tag({ tag = "bordered" }))
hl.bind(MOD .. " + 9", hl.dsp.window.tag({ tag = "opaque" }))

-- Move focus
hl.bind(MOD .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(MOD .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(MOD .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(MOD .. " + down", hl.dsp.focus({ direction = "down" }))

-- Swap windows
hl.bind(MOD .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(MOD .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(MOD .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(MOD .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))

-- Move windows
hl.bind(MOD .. " + CTRL + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(MOD .. " + CTRL + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(MOD .. " + CTRL + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(MOD .. " + CTRL + SHIFT + down", hl.dsp.window.move({ direction = "down" }))

-- Workspaces 1-7: focus, move silently, move and follow
for i = 1, 7 do
    hl.bind(MOD .. " + " .. i, hl.dsp.focus({ workspace = i }))
    hl.bind(MOD .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = false }))
    hl.bind(MOD .. " + CTRL + " .. i, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace
hl.bind(MOD .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(MOD .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic", follow = false }))
hl.bind(MOD .. " + SHIFT + CTRL + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Media and hardware keys
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.local/bin/change_volume -5"), { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.local/bin/change_volume +5"), { repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pactl set-sink-mute @DEFAULT_SINK@ toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("~/.local/bin/toggle_microphone"))
hl.bind("XF86AudioPlayPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl pause"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("~/.local/bin/brightness 4%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("~/.local/bin/brightness 4%-"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("asusctl -p"))
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("asusctl -n"))
hl.bind("XF86Launch1", hl.dsp.exec_cmd("~/.local/bin/cycle_profile"))
hl.bind("XF86Launch4", hl.dsp.exec_cmd("rog-control-center"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("qalculate-gtk"))
hl.bind("Pause", hl.dsp.exec_cmd("playerctl pause"))

-- Mouse binds
hl.bind(MOD .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(MOD .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
