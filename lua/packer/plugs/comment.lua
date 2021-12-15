packer.use({
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            mappings = {
                extended = true,
            },
        })
    end,
})

local wk = require("which-key")

wk.register({
    g = {
        ["cc"] = { "Toggle linewise comment" },
        ["bc"] = { "Toggle blockwise comment" },
        -- extra
        ["co"] = { "Insert comment next line" },
        ["cO"] = { "Insert comment prev line" },
        ["cA"] = { "Insert comment end of line" },
        -- extended
        ["baf"] = { "Toggle comment around a function (lsp)" },
    },
}, { mode = "n" })

wk.register({
    g = {
        ["c"] = { "Toggle linewise comment" },
        ["b"] = { "Toggle blockwise comment" },
    },
}, { mode = "v" })
