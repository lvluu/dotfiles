local wezterm = require 'wezterm'
local config = {}
-- config.color_scheme = "Afterglow"

config.color_scheme = 'Catppuccin Mocha'


config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'MesloLGS NF'  },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 12.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}


-- 修改切换终端快捷键
config.keys = {

	{ key = "h", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "l", mods = "CTRL|ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "w", mods = "CTRL|ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "n", mods = "CTRL|ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	-- F11 切换全屏
	{ key = "F11", mods = "NONE", action = wezterm.action.ToggleFullScreen },
	-- Ctrl + Shift + - 缩小字体
	{ key = "-", mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
	-- Ctrl + Shift + = 扩大字体
	{ key = "=", mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
	-- Ctrl + Shift + 0 重置字体
	{ key = "0", mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
	-- 垂直分屏
	{ key = "d", mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	-- 水平分屏
	{ key = "s", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	-- 关闭当前窗格
	{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	-- 切换到左侧窗格
	{ key = "h", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	-- 切换到下方窗格
	{ key = "j", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	-- 切换到上方窗格
	{ key = "k", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	-- 切换到右侧窗格
	{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
}

-- 配置SSH域
-- config.ssh_domains = {
-- 	{
-- 		name = "energy", -- 配置标识域名
-- 		remote_address = "47.104.236.128", -- 配置远程地址
-- 		username = "root", -- 配置用户名
-- 	},
-- }
-- 关闭时不进行确认
config.window_close_confirmation = "NeverPrompt"

-- 配置透明背景
config.window_background_opacity = .88 -- 设置透明度
config.text_background_opacity = 1 -- 设置文字透明度
-- 设置背景图片
-- config.window_background_image = "C:\\Users\\Kai\\Pictures\\年年-云端\\20261110256233.jpg"

-- 如果只有一个标签页，则隐藏标签栏
config.hide_tab_bar_if_only_one_tab = false
-- 隐藏底部状态栏
config.window_decorations = "RESIZE"
-- 禁用滚动条
config.enable_scroll_bar = false
-- 配置字体大小
config.font_size = 13
-- 配置窗口打开时默认大小
config.initial_cols = 128
config.initial_rows = 26
config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true

-- -- 配置窗口为圆角
-- config.window_background_image_hsb = {
-- 	brightness = 0.1, -- 调整背景图片亮度
-- 	hue = 1, -- 调整背景图片色调
-- 	saturation = 1, -- 调整背景图片饱和度
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