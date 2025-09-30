local wezterm = require 'wezterm'
local config = {}
-- config.color_scheme = "Afterglow"

-- config.color_scheme = 'Catppuccin Mocha'


config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
--   font = wezterm.font { family = 'MesloLGS NF'  },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 10.0,

  -- The overall background color of the tab bar when
  -- the window is focused
--   active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
--   inactive_titlebar_bg = '#333333',
}


-- Change terminal switching keybindings
config.keys = {

	{ key = "h", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "l", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "w", mods = "CTRL|ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "n", mods = "CTRL|ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	-- F11 toggle fullscreen
	{ key = "F11", mods = "NONE", action = wezterm.action.ToggleFullScreen },
	-- Ctrl + Shift + - decrease font size
	{ key = "-", mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
	-- Ctrl + Shift + = increase font size
	{ key = "=", mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
	-- Ctrl + Shift + 0 reset font size
	{ key = "0", mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
	-- Split vertically
	{ key = "d", mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	-- Split horizontally
	{ key = "s", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	-- Close current pane
	{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	-- Switch to left pane
	{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	-- Switch to pane below
	{ key = "j", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	-- Switch to pane above
	{ key = "k", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	-- Switch to right pane
	{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
}

-- Configure SSH domains
-- config.ssh_domains = {
-- 	{
-- 		name = "energy", -- domain identifier
-- 		remote_address = "47.104.236.128", -- remote address
-- 		username = "root", -- username
-- 	},
-- }
-- Do not prompt for confirmation when closing
config.window_close_confirmation = "NeverPrompt"

-- Configure transparent background
-- config.window_background_opacity = 1 -- set opacity
-- config.text_background_opacity = 1 -- set text background opacity
-- Set background image
-- config.window_background_image = "C:\\Users\\Kai\\Pictures\\年年-云端\\20261110256233.jpg"

-- Hide the tab bar if there's only one tab
-- config.hide_tab_bar_if_only_one_tab = false
-- -- Hide bottom status bar (use resize-only window decorations)
-- config.window_decorations = "RESIZE"
-- -- Disable scroll bar
-- config.enable_scroll_bar = false
-- -- Set font size
-- config.font_size = 13
-- -- Default window size on open
-- config.initial_cols = 128
-- config.initial_rows = 26
-- config.use_fancy_tab_bar = false
-- config.enable_tab_bar = true
-- config.show_tab_index_in_tab_bar = true

-- -- Configure window/background image HSB adjustments (rounded window)
-- config.window_background_image_hsb = {
-- 	brightness = 0.1, -- adjust background image brightness
-- 	hue = 1, -- adjust background image hue
-- 	saturation = 1, -- adjust background image saturation
-- }



config.default_prog = { 'nu' }
-- config.default_prog = { 'pwsh.exe', '-NoLogo' }

-- config.color_scheme = 'Github'
-- config.window_background_gradient = {
--   colors = { '#519ccc', '#08316d' },
--   orientation = {
--     Radial = {
--       -- Specifies the x coordinate of the center of the circle,
--       -- in the range 0.0 through 1.0.  The default is 0.5 which
--       -- is centered in the X dimension.
--       cx = 0.75,

--       -- Specifies the y coordinate of the center of the circle,
--       -- in the range 0.0 through 1.0.  The default is 0.5 which
--       -- is centered in the Y dimension.
--       cy = 0.75,

--       -- Specifies the radius of the notional circle.
--       -- The default is 0.5, which combined with the default cx
--       -- and cy values places the circle in the center of the
--       -- window, with the edges touching the window edges.
--       -- Values larger than 1 are possible.
--       radius = 1.25,
--     },
--   },
-- }


-- Finally, return the configuration to wezterm

return config