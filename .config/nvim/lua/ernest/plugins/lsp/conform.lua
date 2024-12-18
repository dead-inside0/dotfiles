return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                rust = { "rustfmt", lsp_format = "fallback" },
                toml = { "taplo" },
                java = { lsp_format = true },
                sh = { "shfmt" },
                zsh = { "shfmt" },
                python = { "black", "isort" },
                tex = { "latexindent" },
                json = { "fixjson" },
                elixir = { "mix" },
                cpp = { "clang-format" },
            },
            format_on_save = {
                timeout_ms = 1000,
                async = false,
                lsp_fallback = true,
            },
        })
        vim.keymap.set("n", "<space>lf", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, {})
    end,
}
