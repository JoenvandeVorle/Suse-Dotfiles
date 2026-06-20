--############################
--## ENVIRONMENT VARIABLES ###
--############################

-- See https://wiki.hypr.land/Configuring/Environment-variables/

-- QT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_STYLE_OVERRIDE", "kvantum")

-- Toolkit Backend Variables
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG Specifications
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Cursor
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("XCURSOR_SIZE", "24")

-- Grimblast
hl.env("SLURP_ARGS", "-d -b -B F050F022 -b 10101022 -c ff00ff")
hl.env("DEFAULT_TARGET_DIR", "/home/wyvern/Pictures/Screenshots")

-- WIP screenrecord stuff - wfrc
hl.env("WFRC_RECORDER", "wf-recorder")
-- By default it can control where the file will be stored
-- env = WFRC_FOLDER,home/wyvern/Videos,
-- By default it can control the title of the notification and the filename
--SCRIPT_NAME="wfrc"
-- Where the lock file resides
--WFRC_LOCK="$WFRC_FOLDER/WFRCLOCK"
-- Set the icon of notification
--WFRC_ICON="record"
-- 1 to enable full screen
--WFRC_FULL_SCREEN=0
-- 0 to disable notification
--WFRC_NOTIFY=1
-- Your audio device
--WFRC_AUDIO_DEV="$(LANG=C pactl get-default-sink).monitor"
--WFRC_FILE_NAME="$WFRC_FOLDER/$SCRIPT_NAME-$(date +%Y-%m-%dT%H-%M-%S).mp4"
-- The error message displayed if Wayland is not detected
--WFRC_NOWAYLAND="No WAYLAND_DISPLAY found. Did you run me on a wayland compositor?"
