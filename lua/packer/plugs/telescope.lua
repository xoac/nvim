-- telescope.nvim is a highly extendable fuzzy finder over lists
packer.use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
})

local wk = require("which-key")

wk.register({
    f = {
        name = "file", -- optional group name
        f = { "<cmd>Telescope find_files<cr>", "Lists files in workdir, respects .gitignore" }, -- create a binding with label
        g = { "<cmd>Telescope live_grep<cr>", "Search for a string in workdir, respects .gitignore" },
        b = { "<cmd>Telescope buffers<cr>", "Lists open buffers" },
        h = { "<cmd>Telescope help_tags<cr>", "Lists available help tags" },
    },
}, {
    prefix = "<leader>",
})
