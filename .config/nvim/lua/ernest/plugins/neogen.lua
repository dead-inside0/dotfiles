return {
    "danymat/neogen",
    config = function()
        local opts = { noremap = true, silent = true }
        require("neogen").setup({})
        vim.keymap.set("n", "<leader>ac", require("neogen").generate, opts)
    end,
}
