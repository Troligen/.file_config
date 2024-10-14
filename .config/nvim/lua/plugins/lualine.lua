return {
	{
		"AndreM222/copilot-lualine",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = { theme = "nord" },
				sections = { lualine_x = { "copilot", "encoding", "fileformat", "filetype" } },
			})
		end,
	},
}
