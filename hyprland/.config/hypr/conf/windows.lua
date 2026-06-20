--#############################
--## WINDOWS AND WORKSPACES ###
--#############################

-- See https://wiki.hypr.land/Configuring/Window-Rules/ for more
-- See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules

-- Example windowrule
-- windowrule = float,class:^(kitty)$,title:^(kitty)$

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
    name = "windowrule-1",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "windowrule-2",
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})

-- More Rules
-- windowrulev2 = bordercolor rgb(ff5555), xwayland:1 # check if window is xwayland

-- Float some windows
-- TODO:: could probably throw a bunch of these into one windowrule?
hl.window_rule({
    name = "windowrule-3",
    match = {
        class = "pavucontrol",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-4",
    match = {
        class = "pavucontrol-qt",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-5",
    match = {
        class = "blueman-manager",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-6",
    match = {
        class = "nm-connection-editor",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-7",
    match = {
        class = "open-folder",
    },
    float = true,
})

-- Browser Picture in Picture
hl.window_rule({
    name = "windowrule-8",
    match = {
        title = "Picture-in-Picture",
    },
    float = true,
    pin = true,
    move = "((monitor_w*0.695)) ((monitor_h*0.04))",
})

-- Open folder popups
hl.window_rule({
    name = "windowrule-10",
    match = {
        title = "Open Folder",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-11",
    match = {
        title = "Open Files",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-12",
    match = {
        title = "^(File)$",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-13",
    match = {
        title = "^(Folder)$",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-14",
    match = {
        title = "^(file)$",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

hl.window_rule({
    name = "windowrule-15",
    match = {
        title = "^(folder)$",
        class = "xdg-desktop-portal-gtk",
    },
    float = true,
})

-- Libreoffice no maximize
hl.window_rule({
    name = "windowrule-16",
    match = {
        class = "^(libreoffice.*)$",
    },
    suppress_event = "maximize",
})

-- feh
hl.window_rule({
    name = "windowrule-17",
    match = {
        class = "feh",
    },
    float = true,
})

