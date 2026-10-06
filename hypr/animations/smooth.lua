-- ============================================================
-- Custom curves (bezier + spring)
-- ============================================================
hl.curve("overshoot", {
	type = "bezier",
	points = { { 0.34, 1.56 }, { 0.64, 1.00 } },
})

hl.curve("smooth", {
	type = "bezier",
	points = { { 0.25, 0.10 }, { 0.25, 1.00 } },
})

hl.curve("sharp", {
	type = "bezier",
	points = { { 0.70, 0.00 }, { 0.30, 1.00 } },
})

hl.curve("bounce", {
	type = "spring",
	mass = 1.0,
	stiffness = 280,
	dampening = 22,
})

hl.curve("softspring", {
	type = "spring",
	mass = 1.0,
	stiffness = 90,
	dampening = 14,
})

hl.curve("snappy", {
	type = "spring",
	mass = 1.0,
	stiffness = 420,
	dampening = 28,
})

-- ============================================================
-- Animations – every leaf + every style
-- ============================================================

-- Windows
hl.animation({ leaf = "windows", enabled = true, speed = 5.5, bezier = "overshoot", style = "popin 85%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.8, spring = "bounce", style = "slide left" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4.2, spring = "softspring", style = "slide right" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3.6, spring = "snappy", style = "slide" })

-- Layers
hl.animation({ leaf = "layers", enabled = true, speed = 4.0, bezier = "smooth", style = "popin" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.5, spring = "bounce", style = "slide top" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3.2, spring = "softspring", style = "fade" })

-- Fade family
hl.animation({ leaf = "fade", enabled = true, speed = 3.0, bezier = "smooth" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.8, bezier = "overshoot" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2.6, bezier = "sharp" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 2.4, spring = "snappy" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 2.2, spring = "softspring" })
hl.animation({ leaf = "fadeGlow", enabled = true, speed = 2.0, spring = "bounce" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3.5, bezier = "smooth" })
hl.animation({ leaf = "fadeLayers", enabled = true, speed = 2.8, bezier = "overshoot" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2.5, spring = "bounce" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2.3, spring = "softspring" })
hl.animation({ leaf = "fadePopups", enabled = true, speed = 2.0, spring = "snappy" })
hl.animation({ leaf = "fadePopupsIn", enabled = true, speed = 1.8, bezier = "overshoot" })
hl.animation({ leaf = "fadePopupsOut", enabled = true, speed = 1.6, bezier = "sharp" })
hl.animation({ leaf = "fadeDpms", enabled = true, speed = 4.0, bezier = "smooth" })

-- Border / angle animations
hl.animation({ leaf = "border", enabled = true, speed = 6.0, bezier = "smooth" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 12.0, spring = "softspring", style = "once" })
hl.animation({ leaf = "shadowangle", enabled = true, speed = 14.0, spring = "bounce", style = "loop" })
hl.animation({ leaf = "glowangle", enabled = true, speed = 16.0, spring = "snappy", style = "loop" })

-- Workspaces
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.0, bezier = "overshoot", style = "slidefade 25%" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 4.5, spring = "bounce", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4.2, spring = "softspring", style = "slidefadevert 30%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 5.5, spring = "snappy", style = "fade" })
hl.animation({ leaf = "specialWorkspaceIn", enabled = true, speed = 4.8, bezier = "overshoot", style = "slide" })
hl.animation({ leaf = "specialWorkspaceOut", enabled = true, speed = 4.4, bezier = "smooth", style = "slidevert" })

-- Misc
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 3.0, spring = "softspring" })
hl.animation({ leaf = "monitorAdded", enabled = true, speed = 6.0, spring = "bounce" })
