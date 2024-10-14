return {
	{
		"AndreM222/copilot-lualine",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			-- I will later create a custom theme for lualine
			-- local custom_gruvbox = require'lualine.themes.gruvbox'
			require("lualine").setup({
				options = { theme = "gruvbox_dark" },
				sections = { lualine_x = { "copilot", "encoding", "fileformat", "filetype" } },
			})
		end,
	},
}
