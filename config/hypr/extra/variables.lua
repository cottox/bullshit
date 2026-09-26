local home = os.getenv("HOME")

return {

  -- tui
  term       = "kitty",
  code       = "kitty -e nvim", -- or codium, wtv you want

  -- gui
  files      = "thunar",        -- files = term .. " -e yazi" 
  browser    = "firefox",       
  torrent    = "qbittorrent",   -- hell yeah pirating

  -- etc
  launcher   = "rofi -show drun",
  screenshot = "sh -c 'grim -g \"$(slurp)\" - | wl-copy'",
  wallpaper  = home .. ".local/bin/wallpaper",
  clipboard  = "",
  lock       = "",
  emoji      = "",

}

--[[

      docs

      pls dont edit stuff in here they may be overwritten do it in ~/.config/bullshit/vars.lua
      please dude

--]]

