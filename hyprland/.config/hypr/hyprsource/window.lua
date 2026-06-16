--Attaches programs to specific workspaces
hl.window_rule ({
  name = "windowrule-1",
  match = {class = "steam"},
  workspace = 5
})

hl.window_rule ({
  name = "windowrule-2",
  match = {class = "thunderbird"},
  workspace = 9
})

hl.window_rule ({
  name = "windowrule-3",
  match = {class = "discord"},
  workspace = 10
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true})
hl.workspace_rule({ workspace = "2", monitor = "DP-2"})
hl.workspace_rule({ workspace = "3", monitor = "DP-1"})
hl.workspace_rule({ workspace = "4", monitor = "DP-2"})
hl.workspace_rule({ workspace = "5", monitor = "DP-1"})
hl.workspace_rule({ workspace = "6", monitor = "DP-2"})
hl.workspace_rule({ workspace = "7", monitor = "DP-1"})
hl.workspace_rule({ workspace = "8", monitor = "DP-2"})
hl.workspace_rule({ workspace = "9", monitor = "DP-2"})
hl.workspace_rule({ workspace = "10", monitor = "DP-2", default = true})
