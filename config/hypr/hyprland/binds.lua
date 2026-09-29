local user = "SUPER"
local app  = require("extra.vars")

hl.bind(user .. " + Q",           hl.dsp.window.close())
hl.bind(user .. " + ALT + SPACE", hl.dsp.window.float({ action = "toggle" }))

hl.bind(user .. " + Return",        hl.dsp.exec_cmd(app.term))
hl.bind(user .. " + C",             hl.dsp.exec_cmd(app.code))
hl.bind(user .. " + E",             hl.dsp.exec_cmd(app.files))
hl.bind(user .. " + W",             hl.dsp.exec_cmd(app.browser))
hl.bind(user .. " + T",             hl.dsp.exec_cmd(app.torrent))
hl.bind(user .. " + SUPER_L",       hl.dsp.exec_cmd(app.launcher))

hl.bind(user .. " + SHIFT + W", hl.dsp.exec_cmd(app.wallpaper))
hl.bind(user .. " + SHIFT + S", hl.dsp.exec_cmd(app.screenshot))

hl.bind(user .. " + L",         hl.dsp.exec_cmd(app.lock))
hl.bind(user .. " + semicolon", hl.dsp.exec_cmd(app.emoji))
hl.bind(user .. " + V",         hl.dsp.exec_cmd(app.clipboard))

for i = 1, 10 do
    local key = i % 10 
    hl.bind(user .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(user .. " + ALT + " .. key,       hl.dsp.window.move({ workspace = i }))
end

hl.bind(user .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(user .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(user .. " + bracketright",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(user .. " + P",             hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(user .. " + bracketleft",   hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
