hl.monitor({
    output = "DP-1", -- hyprctl monitors
    mode = "1920x1080@180",
    position = "auto",
    scale = 1
})

hl.config({
    input = {
        kb_layout  = "us,ru",
        kb_options = "grp:caps_toggle",

        follow_mouse = 1,
        force_no_accel = 1,

        sensitivity = 0.16, -- -1.0 - 1.0, 0 means no modification.
    },
})

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 0,

        resize_on_border = false,

        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 0,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 8,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled   = true,
            size      = 8,
            passes    = 4,
            vibrancy  = 0.1696,
        },
    },

    
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
    }
})

animations = {
    enabled = true,
},

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
hl.curve("slide",          { type = "bezier", points = { {0.2, 0.8},  {0.2, 1} } })
hl.curve("scale",          { type = "bezier", points = { {0.16, 1},   {0.3, 1} } })

hl.curve("easy",           { type = "spring", mass = 1, stiffness = 238.1191, dampening = 24.21279333 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 6.0,  bezier = "scale" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 6.5,  bezier = "scale",        style = "popin 75%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 2.49, bezier = "almostLinear"})
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 3.19,  bezier = "slide",        style = "slidevert" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 3.19,  bezier = "slide",        style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 3.19,  bezier = "slide",        style = "slidevert" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })

