return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.opt.termguicolors = true
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                numbers = function(ordinal, id)
                    return ("%d:%f").format(id, ordinal)
                end,
                separator_style = "padded_slant",
                buffer_close_icon = "󰅖",
                modified_icon = "●",
                close_icon = "",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        text_align = "left",
                        separator = true,
                    },
                },
                indicator = {
                    style = "underline",
                },
                hover = {
                    enabled = true,
                    delay = 100,
                    reveal = { "close" },
                },
                highlights = {
                    buffer_selected = {
                        bold = true,
                        italic = false,
                    },
                },
            },
        })
    end,
}
