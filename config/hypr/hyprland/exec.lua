hl.on("hyprland.start", function ()

  -- wallpaper daemon --
  hl.exec_cmd("awww-daemon")

  -- clipboard history --
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")

  -- cursor --
  hl.exec_cmd("hyprctl setcursor bibata 21")
  -- install cursor from https://github.com/ful1e5/Bibata_Cursor and rename it to "bibata", then put it in ~/.local/share/icons

  -- pipewire --
  hl.exec_cmd("pipewire & wireplumber & pipewire-pulse")
    
end)
