--###############
--## MONITORS ###
--###############

-- See https://wiki.hypr.land/Configuring/Monitors/
-- monitor = name, resolution, position, scale

hl.monitor({
    output = "eDP-1",
    mode = "2880x1620@60",
    -- mode    = preferred,
    position = "auto",
    scale = "1.33",
})

-- work monitor
hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto-up",
    scale = "1",
})

-- extra
hl.monitor({
    output = "DP-2",
    mode = "preferred",
    position = "auto-right",
    scale = "1",
})

hl.env("GDK_SCALE", "2")

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto-up",
    scale = "1",
})

hl.config({
    xwayland = {
        enabled = true,
        force_zero_scaling = true,
        use_nearest_neighbor = false,
    },
    -- catch-all
})

