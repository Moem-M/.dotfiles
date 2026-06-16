-- Defaults
local terminal = "kitty"
local fileManager = "kitty yazi" --kinda works (not in y mode)
local menu = "rofi -show drun"
local browser = "waterfox"

hl.on("hyprland.start", function()
	-- start hyprland locked or dont start hyprland at all
	hl.exec_cmd("hyprlock || hyprctl dispatch exit")

	-- swaync is the notification daemon
	hl.exec_cmd("waybar & hyprpaper & swaync & hypridle & discord & thunderbird")

	-- GUI applications being able to request elevated privileges
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Network Manager
	hl.exec_cmd("nm-applet ")
end)
