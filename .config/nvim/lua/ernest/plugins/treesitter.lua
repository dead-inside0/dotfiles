return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "vim", "vimdoc", "elixir", "java", "python" },
            auto_intall = true,
            sync_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
