local super = "SUPER"
local home  = os.getenv("HOME")
local vars  = require("extra.variables")

hl.bind(super .. " + Q",           hl.dsp.window.close())
hl.bind(super .. " + ALT + SPACE", hl.dsp.window.float({ action = "toggle" }))

hl.bind(super .. " + Return",  hl.dsp.exec_cmd(vars.term))
hl.bind(super .. " + C",       hl.dsp.exec_cmd(vars.code))
hl.bind(super .. " + E",       hl.dsp.exec_cmd(vars.files))
hl.bind(super .. " + W",       hl.dsp.exec_cmd(vars.browser))
hl.bind(super .. " + T",       hl.dsp.exec_cmd(vars.torrent))

hl.bind(super .. " + SHIFT + X", hl.dsp.exec_cmd(home .. "/.local/bin/gdz.sh"))

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(super .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(super .. " + ALT + " .. key,       hl.dsp.window.move({ workspace = i }))
end

hl.bind(super .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(super .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(super .. " + bracketright",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(super .. " + P",             hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(super .. " + bracketleft",   hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
