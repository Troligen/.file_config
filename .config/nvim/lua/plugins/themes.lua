return {
	{
		-- "catppuccin/nvim",
		"vague2k/vague.nvim",
		lazy = false,
		-- name = "catppuccin",
		name = "vague",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("catppuccin")
			vim.cmd.colorscheme("vague")
			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
			vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "FloatBorder", { fg = "none", bg = "none" })
		end,
	},
	"nvim-tree/nvim-web-devicons",
}
