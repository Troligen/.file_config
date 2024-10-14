return {
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup({
				options = { theme = "nord" },
			})
		end,
	},
	{
		"AndreM222/copilot-lualine",
	},
}
