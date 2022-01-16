packer.use({
    "anuvyklack/pretty-fold.nvim",
    config = function()
        require("pretty-fold").setup({})
        require("pretty-fold.preview").setup()
    end,
})
