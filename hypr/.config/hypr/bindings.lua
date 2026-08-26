
-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")


-- Bitwarden replaces the default 1Password shortcut.
hl.unbind("SUPER + SHIFT + SLASH")
o.bind("SUPER + SHIFT + MINUS", "Passwords", "uwsm-app -- bitwarden.desktop")

-- Betterbird replaces the default HEY email/calendar web apps.
hl.unbind("SUPER + SHIFT + E")
o.bind("SUPER + SHIFT + E", "Email", "omarchy-launch-or-focus betterbird")

hl.unbind("SUPER + SHIFT + C")
o.bind("SUPER + SHIFT + C", "Calendar", "omarchy-launch-or-focus betterbird")

-- spotatui replaces the default Spotify/cliamp music launchers.
hl.unbind("SUPER + SHIFT + M")
o.bind("SUPER + SHIFT + M", "Music", "omarchy-launch-or-focus-tui spotatui")

hl.unbind("SUPER + SHIFT + ALT + M")
o.bind("SUPER + SHIFT + ALT + M", "Music TUI", "omarchy-launch-or-focus-tui spotatui")

-- Capture shortcuts.
o.bind("INSERT", "Screenshot", "omarchy-capture-screenshot")
o.bind("ALT + INSERT", "Screenrecording", "omarchy-menu screenrecord")
o.bind("SUPER + INSERT", "Color picker", "pkill hyprpicker || hyprpicker -a")
o.bind("SUPER + CTRL + INSERT", "Extract text (OCR) from screenshot", "omarchy-capture-text")
