return {
	{
		"AndreM222/copilot-lualine",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			-- I will later create a custom theme for lualine
			local custom_gruvbox = require("lualine.themes.gruvbox_dark")
			custom_gruvbox.insert.a.bg = "#A1B3B9"
			custom_gruvbox.visual.a.bg = "#B98888"
			custom_gruvbox.command.a.bg = "#DEB896"
			custom_gruvbox.normal.c.bg = "#262626"
			custom_gruvbox.insert.c.bg = "#262626"
			custom_gruvbox.visual.c.bg = "#262626"
			custom_gruvbox.command.c.bg = "#262626"
			require("lualine").setup({
				options = { theme = custom_gruvbox },
				sections = { lualine_x = { "copilot", "encoding", "fileformat", "filetype" } },
			})
		end,
	},
}
