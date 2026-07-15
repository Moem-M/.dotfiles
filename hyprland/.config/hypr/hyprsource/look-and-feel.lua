hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 2,

		border_size = 2,

		col = {
			active_border = "rgb(7aa2f7)",
			inactive_border = "rgb(1a1b26)",
		},

		--Set to true enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = true,

		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 10,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 3,
			render_power = 5,
			color = "rgba(1a1a1aee)",
		},
	},

	animations = {
		enabled = false,
	},

	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background.
		vrr = 0,
	},
})
