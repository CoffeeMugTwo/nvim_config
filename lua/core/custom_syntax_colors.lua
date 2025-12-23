--This module defines some custom syntax colors for comments and docstrings
vim.api.nvim_set_hl(0, "@comment", { fg = "#FF0000" })
vim.api.nvim_set_hl(0, "@string.doc", { fg = "#808080" })
vim.api.nvim_set_hl(0, "@string.documentation.python", { fg = "#808080" })
vim.api.nvim_set_hl(0, "@lsp.typemod.string.documentation.python", { fg = "#808080" })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = "#808080" })
