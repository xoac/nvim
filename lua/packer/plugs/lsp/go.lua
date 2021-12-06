packer.use({ "crispgm/nvim-go" })

-- setup nvim-go
require("go").setup({})

-- setup lsp client
require("lspconfig").gopls.setup({})
