local home = os.getenv("HOME")
local term = "kitty" -- change this to change everything that includes terminals

return {

-- tui
  term       = term,
  code       = term .. " -e nvim", -- or codium, wtv you want

  -- gui
  files      = "thunar",        -- files = term .. " -e yazi" 
  browser    = "firefox",       
  torrent    = "qbittorrent",   -- hell yeah pirating
  music      = "yandex-music",  -- russian spotify analogue trust me no russia spying on u [ im not sure ]

  -- etc
  launcher   = "rofi -show drun",
  screenshot = "sh -c 'grim -g \"$(slurp)\" - | wl-copy'",
  wallpaper  = home .. "/.local/bin/wallpapers",
  clipboard  = "cliphist list | rofi -dmenu -p ' ' | cliphist decode | wl-copy", -- sudo pacman -S cliphist wl-clipboard
  lock       = "",
  emoji      = "rofimoji --action copy --prompt '󰞅 '",                            -- sudo pacman -S rofimoji

}
