local wezterm = require 'wezterm'
return {
	font = wezterm.font('Hack Nerd Font', { weight = 'Regular' }),
	color_scheme = "astromouse (terminal.sexy)",
      -- Appearance
  	enable_tab_bar = false,
  	enable_scroll_bar = false,
  	warn_about_missing_glyphs = false,

  	-- Window layout
  	window_padding = {
    	left = "1cell",
    	right = "1cell",
    	top = "1cell",
    	bottom = "0.5cell",
  },
}
