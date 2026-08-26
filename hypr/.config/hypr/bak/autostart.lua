-- Extra autostart processes migrated from autostart.conf.

hl.on("hyprland.start", function()
  hl.exec_cmd("[workspace 1] omarchy-launch-browser")
  hl.exec_cmd("[workspace 6] omarchy-launch-tui spotatui")
end)
