-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

-- Monitor scale is Hyprland's scale for the output. It sizes everything
-- Wayland-native, accepts fractions (1.6, 1.75), and applies immediately.
-- "auto" lets Hyprland pick per display.
local omarchy_monitor_scale = "auto"
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = omarchy_monitor_scale })

-- Configure a specific monitor.
-- hl.monitor({ output = "DP-2", mode = "2560x1440@144", position = "0x0", scale = 1 })

-- Portrait/rotated secondary monitor (transform: 1 = 90°, 3 = 270°).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })

-- GDK scale is GDK_SCALE, the factor GTK draws its own UI at. It's what
-- sizes X11/XWayland windows, which Omarchy leaves unscaled so they stay
-- crisp instead of being stretched by the compositor. GTK only honors whole
-- numbers, so use the nearest integer to the monitor scale, and restart an
-- app for a change to reach it.
local omarchy_gdk_scale = 2
hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Monitor and workspace layout migrated from monitors.conf.

hl.env("GDK_SCALE", "1")

-- Specific monitors.
hl.monitor({
  output = "desc:Samsung Electric Company LC24RG50 HNAT309282",
  mode = "1920x1080@144",
  position = "0x0",
  scale = 1,
})

hl.monitor({
  output = "desc:BNQ BenQ GL2460 N5F00704SL0",
  mode = "preferred",
  position = "1920x-50",
  scale = 1,
})

-- Fallback for other monitors, preserving the old catch-all scale.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 4 })

-- Assign workspaces to monitors.
hl.workspace_rule({ workspace = "name:1", monitor = "DP-1" })
hl.workspace_rule({ workspace = "name:2", monitor = "DP-1" })
hl.workspace_rule({ workspace = "name:3", monitor = "DP-1" })

hl.workspace_rule({ workspace = "name:4", monitor = "desc:BNQ BenQ GL2460 N5F00704SL0" })
hl.workspace_rule({ workspace = "name:5", monitor = "desc:BNQ BenQ GL2460 N5F00704SL0" })
hl.workspace_rule({ workspace = "name:6", monitor = "desc:BNQ BenQ GL2460 N5F00704SL0" })
