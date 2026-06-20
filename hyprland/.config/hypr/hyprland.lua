-- This is an example Hyprland config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can split this configuration into multiple files
-- Create your files separately and then link them to this file like this:

-- Monitor first

-- Source: ~/.config/hypr/conf/monitors.conf — convert this file to Lua and ensure it is on Lua's package.path.
require("conf.monitors")

-- Variables second
require("conf.variables")

-- Autostart
require("conf.autostart")

-- For the rest, order does not matter too much
require("conf.env")
require("conf.perms")
require("conf.looknfeel")
require("conf.input")
require("conf.keybindings")
require("conf.windows")