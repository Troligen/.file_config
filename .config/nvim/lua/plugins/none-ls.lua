return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
			},
			on_attach = function(client)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						callback = function()
							vim.lsp.buf.format()
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
