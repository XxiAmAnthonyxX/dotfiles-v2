package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")
smw.setup({
	workspace_count = 5,
	monitor_priority = { "DP-1", "HDMI-A-1" },
	enable_persistent_workspaces = true,
	enable_wrapping = true,
	keep_focused = true,
})

local winMod = "SUPER"

-- Kill
hl.bind(winMod .. " + ESCAPE", hl.dsp.window.close())

-- Focus
hl.bind(winMod .. " + A", hl.dsp.layout("focus l"))
hl.bind(winMod .. " + D", hl.dsp.layout("focus r"))
hl.bind(winMod .. " + S", hl.dsp.layout("focus d"))
hl.bind(winMod .. " + W", hl.dsp.layout("focus u"))

-- Move
hl.bind(winMod .. " + SHIFT + A", hl.dsp.layout("swapcol l"))
hl.bind(winMod .. " + SHIFT + D", hl.dsp.layout("swapcol r"))
hl.bind(winMod .. " + SHIFT + S", hl.dsp.window.move({ direction = "down" }))
hl.bind(winMod .. " + SHIFT + W", hl.dsp.window.move({ direction = "up" }))
hl.bind(winMod .. " + SHIFT + P", hl.dsp.window.move({ direction = "left" }))

-- Collapse / Expand
hl.bind(winMod .. " + SHIFT + SPACE", function()
	local w = hl.get_active_window()
	if not w then
		return
	end

	local mon = w.monitor
	if not mon then
		return
	end

	local win_w = w.size and (w.size.x or w.size[1]) or w.width
	local mon_w = mon.size and (mon.size.x or mon.size[1]) or mon.width
	if not win_w or not mon_w or mon_w == 0 then
		return
	end

	local frac = win_w / mon_w

	if frac >= 0.90 then
		hl.dispatch(hl.dsp.layout("colresize 0.5"))
	else
		hl.dispatch(hl.dsp.layout("colresize 1.0"))
	end
end)

-- Float / Fullscreen
hl.bind(winMod .. " + SHIFT + TAB", hl.dsp.window.float({ action = "toggle" }))
hl.bind(winMod .. " + CTRL + SPACE", hl.dsp.window.fullscreen({ action = "toggle" }))

-- Mouse
hl.bind(winMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(winMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspaces
for i = 1, smw.get_amount_of_workspaces() do
	local n = tostring(i)
	hl.bind(winMod .. " + " .. n, smw.workspace(n))
	hl.bind(winMod .. " + SHIFT + " .. n, smw.move_to_workspace(n))
	hl.bind(winMod .. " + CTRL + " .. n, smw.move_to_workspace_silent(n))
end

-- Apps
hl.bind(winMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(winMod .. " + Z", hl.dsp.exec_cmd("steam"))
hl.bind(winMod .. " + X", hl.dsp.exec_cmd("librewolf"))

-- Scripts
hl.bind(winMod .. " + RETURN", hl.dsp.exec_cmd("kitty -e fish -i -c '~/.config/hypr/scripts/theme/apply/select.sh'"))

-- .config/hypr/hyprland.lua
hl.config({
	plugin = {
		scrolloverview = {
			gesture_distance = 300, -- how far is the "max" for the gesture
			scale = 0.5, -- preferred overview scale
			workspace_gap = 100,
			layout = "vertical", -- vertical, horizontal, or auto (per-monitor orientation)
			wallpaper = 2, -- 0: global only, 1: per-workspace only, 2: both
			blur = true, -- blur only the main overview wallpaper

			shadow = {
				enabled = true,
				range = 50,
			},
		},
	},
})

-- Toggle ScrollOverview with SUPER+g
hl.bind("SUPER + g", function()
	hl.plugin.scrolloverview.overview("toggle all")
end)launcher.sh'"))
