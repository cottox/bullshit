
hl.env("XCURSOR_THEME", "ice") 
hl.env("XCURSOR_SIZE", "20")

hl.env("ENV", os.getenv("HOME") .. "/.mkshrc")

-- Toolkit Backend Variables
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_UTILS_TERMINAL", "kitty")

-- QT Variables
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFOREMTHEME", "qt5ct")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1") -- disables x, _ and square in window bar, works only in qt-based apps?

-- NVIDIA Specific
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
