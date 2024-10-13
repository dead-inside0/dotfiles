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
                python = { "black", "isort" },
                tex = { "latexindent" },
                elixir = { lsp_format = true },
                json = { "fixjson" },
            },
            format_on_save = {
                timeout_ms = 500,
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
