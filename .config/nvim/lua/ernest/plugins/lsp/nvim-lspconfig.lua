return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.bashls.setup({
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.jdtls.setup({
            capabilities = capabilities,
        })

        lspconfig.texlab.setup({
            capabilities = capabilities,
        })

        lspconfig.elixirls.setup({
            capabilities = capabilities,
        })

        lspconfig.clangd.setup({
            capabilities = capabilities,
        })

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),
            callback = function(args)
                vim.bo[args.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

                local opts = { buffer = args.buf, silent = true, noremap = true }
                vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>gr", vim.lsp.buf.implementation, opts)
            end,
        })
    end,
}
