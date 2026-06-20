--################
--## AUTOSTART ###
--################

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/pam_kwallet_init --no-startup-id")
    hl.exec_cmd("systemctl --user start plasma-polkit-agent")
    -- exec-once = systemctl --user start hyprpolkitagent
    
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("sleep 1 && dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    
    -- exec-once = hyprsunset
    hl.exec_cmd("nm-applet & $taskbar & hyprpaper & hypridle & dunst")
    hl.exec_cmd("$clipboard & $clipboardimage")

    --## OTHER APPS ###
    -- exec-once = sleep 2; DO_NOT_UNSET_QT_QPA_PLATFORMTHEME=1 QT_QPA_PLATFORM=xcb megasync
end)

