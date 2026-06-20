--################
--## VARIABLES ###
--################
-- See https://wiki.hypr.land/Configuring/Keywords/

local wofiConfig = "~/.config/wofi/config"
local wofiStyle = "~/.config/wofi/themes/catppuccin/mocha/style.css"

local waybarConfig = "~/.config/waybar/config"
local waybarStyle = "~/.config/waybar/style.css"

-- Set programs that you use
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "~/.config/hypr/scripts/appLauncher.sh"
-- $menu         = wofi --show drun
local taskbar = "waybar"
local powermenu = "~/.config/hypr/scripts/power_menu.sh"
local browser = "firefox"
local editor = "codium --enable-features=UseOzonePlatform --ozone-platform=wayland"
local editor2 = "code --enable-features=UseOzonePlatform --ozone-platform=wayland"
local lockscreen = "hyprlock"
local colorpicker = "hyprpicker"

local clipboard = "wl-paste --type text --watch cliphist store" -- Stores only text data
local clipboardimage = "wl-paste --type image --watch cliphist store" -- Stores only text data
local inputmethod = "fcitx5 -d"
