packer.use({
    "simrat39/rust-tools.nvim",
    config = function()
        require("rust-tools").setup({})
    end,
})

packer.use({
    "saecki/crates.nvim",
    --    tag = 'v0.1.0',
    event = { "BufRead Cargo.toml" },
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
        require("crates").setup()
    end,
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").rust_analyzer.setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = {
                command = "clippy",
            },
            rustfmt = {
                enableRangeFormatting = true,
            },
        },
    },
})
