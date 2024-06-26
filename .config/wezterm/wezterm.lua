local wezterm = require("wezterm")
local ssh_domains = require("extra.ssh")

local c = {}

if wezterm.config_builder then
	c = wezterm.config_builder()
end

-- Appearance
c.color_scheme = "Monokai Pro (Gogh)"
c.window_background_opacity = 0.85
c.hide_tab_bar_if_only_one_tab = true
c.use_fancy_tab_bar = true
c.text_background_opacity = 0.7
c.window_decorations = "NONE"
c.default_cursor_style = "SteadyBar"
-- Font
c.font = wezterm.font("SauceCodePro NF")
c.font_size = 16

-- Launching Programs
c.wsl_domains = {
	{
		name = "WSL:Arch",
		distribution = "Arch",
		default_cwd = "/home/jacob",
	},
}
c.default_domain = "WSL:Arch"

-- Scroll bar
c.enable_scroll_bar = true

-- Key Bindings
-- disable_default_key_bindings = true

c.ssh_domains = ssh_domains
c.window_close_confirmation = "NeverPrompt"

-- Clipboard
c.use_ime = true

return c
