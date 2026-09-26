hl.on("hyprland.start", function()
  
  -- clipboard
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- cursor
  hl.exec_cmd("hyprctl setcursor bibata 20")

end)
