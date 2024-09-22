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
                java = { "google-java-format", lsp_format = "fallback" },
                sh = { "shfmt" },
                python = { "black", "isort" },
                tex = { "latexindent" },
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
