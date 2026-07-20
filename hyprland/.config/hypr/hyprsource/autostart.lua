hl.on("hyprland.start", function()
	-- start hyprland locked or dont start hyprland at all
	hl.exec_cmd("hyprlock || hyprctl dispatch exit")

	-- swaync is the notification daemon
	hl.exec_cmd("waybar & hyprpaper & swaync & hypridle")

	-- GUI applications being able to request elevated privileges
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Network Manager
	hl.exec_cmd("nm-applet ")
end)
