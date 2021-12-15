packer.use({
    "simrat39/rust-tools.nvim",
    config = function()
        require("rust-tools").setup({})
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
