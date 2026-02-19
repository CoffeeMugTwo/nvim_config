return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                -- Use Ruff to format AND organize imports
                python = { "ruff_format", "ruff_organize_imports" },
            },
            formatters = {
                ruff_format = {
                    args = {
                        "format",
                        "--config",
                        vim.fn.expand("~/.config/nvim/config_files/ruff_global.toml"),
                        "--stdin-filename",
                        "$FILENAME",
                        "-",
                    },
                },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },
        })
    end,
}
