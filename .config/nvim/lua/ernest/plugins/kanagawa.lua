return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    opts = {
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        theme = "wave",
        background = {
            dark = "wave",
        },
    },
    config = function()
        vim.cmd.colorscheme("kanagawa")
    end,
}
