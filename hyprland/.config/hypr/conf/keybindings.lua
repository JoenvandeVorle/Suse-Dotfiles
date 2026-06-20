--##################
--## KEYBINDINGS ###
--##################

-- See https://wiki.hyprland.org/Configuring/Keywords/

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd("$terminal"))
hl.bind(mainMod .. " + W", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("XDG_CURRENT_DESKTOP=kde $fileManager"))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("$menu"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("$browser"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("$editor"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("flatpak run dev.vencord.Vesktop"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("$editor2"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + code:10", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + code:11", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + code:12", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + code:13", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + code:14", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + code:15", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + code:16", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + code:17", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + code:18", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + code:19", hl.dsp.focus({ workspace = 10 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + code:10", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + code:11", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + code:12", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + code:13", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + code:14", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + code:15", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + code:16", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + code:17", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + code:18", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + code:19", hl.dsp.window.move({ workspace = 10 }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

-- Laptop multimedia keys for volume and LCD brightness
    -- "on-scroll-up": "$HOME/.config/hypr/scripts/volume.sh --inc",
    -- "on-scroll-down": "$HOME/.config/hypr/scripts/volume.sh --dec",
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/volume.sh --inc"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/volume.sh --dec"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

--#############################
--##         OTHERS         ###
--#############################

hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
-- bind = $mainMod, Print, exec, grim
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("$colorpicker –-autocopy"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd("$powermenu"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("$lockscreen"))

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("killall waybar && hyprctl dispatch -- exec $taskbar"))

hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))

-- Screenshots, check env for config
hl.bind("Print", hl.dsp.exec_cmd("grimblast -n -c copy screen"))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("grimblast -n copy active"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grimblast -n -f copy area"))

hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd("grimblast -n -c copysave screen"))
hl.bind(mainMod .. " + CTRL + Print", hl.dsp.exec_cmd("grimblast -n copysave active"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("grimblast -n -f copysave area"))

-- Screenrecording - WIP
hl.bind("CTRL + ALT + S", hl.dsp.exec_cmd("wfrc -c h264_vaapi -d /dev/dri/renderD128"))
-- bind = CTRL ALT, Print, exec, wfrc

-- Blue light filter
-- bind = $mainMod ALT, Up, exec, hyprctl keyword decoration:screen_shader ~/.config/hypr/screenShader.frag
-- bind = $mainMod ALT, Down, exec, hyprctl reload

-- bind = $mainMod ALT, O, exec, hyprctl hyprsunset temperature 2500
-- bind = $mainMod ALT, L, exec, hyprctl hyprsunset identity

-- bindel = ,XF86MonBrightnessDown, exec, hyprctl hyprsunset gamma -10
-- bindel = ,XF86MonBrightnessUp, exec, hyprctl hyprsunset gamma +10

--################################
--##         WALLPAPER         ###
--################################

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/change_wallpapers.sh"))
