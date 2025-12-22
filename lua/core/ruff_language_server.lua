vim.lsp.config("ruff", {
	init_options = {
		settings = {
			configuration = "~/.config/nvim/core/ruff.toml",
			-- Ruff language server settings go here
		},
	},
})

vim.lsp.enable("ruff")
