return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup({})
		vim.keymap.set(
			"n",
			"<leader>hs",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ noremap = true, silent = true, desc = "Shows All Harpoon Files" }
		)
		vim.keymap.set(
			"n",
			"<leader>ha",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ noremap = true, silent = true, desc = "Add Harpoon File" }
		)
		vim.keymap.set(
			"n",
			"<leader>1",
			"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
			{ noremap = true, silent = true, desc = "Jump To Harpoon 1" }
		)
		vim.keymap.set(
			"n",
			"<leader>2",
			"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
			{ noremap = true, silent = true, desc = "Jump To Harpoon 2" }
		)
		vim.keymap.set(
			"n",
			"<leader>3",
			"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
			{ noremap = true, silent = true, desc = "Jump To Harpoon 3" }
		)
		vim.keymap.set(
			"n",
			"<leader>4",
			"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
			{ noremap = true, silent = true, desc = "Jump To Harpoon 4" }
		)
	end,
}
