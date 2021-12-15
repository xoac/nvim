packer.use({
    "nanotee/sqls.nvim",
    requires = { "neovim/nvim-lspconfig" },
    config = function()
        require("lspconfig").sqls.setup({
            --cmd = { "/path/to/sqls", "-config", "$HOME/.config/sqls/config.yml" },
            on_attach = function(client)
                client.resolved_capabilities.execute_command = true
                -- client.commands = require("sqls").commands -- Neovim 0.6+ only

                require("sqls").setup({})
            end,
            picker = "telescope",
        })
    end,
})
