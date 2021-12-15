--[[
-- LSP - Language server client
--]]

packer.use({ "neovim/nvim-lspconfig" }) -- Collection of configurations for built-in LSP client
packer.use({
    "hrsh7th/nvim-cmp",
    requires = {
        { "onsails/lspkind-nvim" }, -- adds vscode-like pictograms to neovim built-in lsp
        {
            "L3MON4D3/LuaSnip",
            requires = {
                { "saadparwaiz1/cmp_luasnip" }, -- Snippets source for nvim-cmp
                { "rafamadriz/friendly-snippets" }, -- Snippets collection for a set of different programming languages for faster development.
            },
            config = function()
                require("luasnip/loaders/from_vscode").lazy_load()
            end,
        }, -- Snippets plugin
        { "hrsh7th/cmp-nvim-lsp" }, -- source for different languages
        { "hrsh7th/cmp-path" }, -- file system path completion
        { "hrsh7th/cmp-buffer" }, -- get completions from current buffer
    },
    config = function()
        local lspkind = require("lspkind")
        local luasnip = require("luasnip")
        local cmp = require("cmp")
        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({ with_text = false, maxwidth = 50 }),
            },
            mapping = {
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.close(),
                ["<CR>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true,
                }),
                ["<Tab>"] = function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end,
                ["<S-Tab>"] = function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end,
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" },
                { name = "buffer" },
            },
        })
    end,
}) -- Autocompletion plugin

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

--[[
---- LSP mapping
--]]

local wk = require("which-key")
wk.register({
    g = {
        D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "go to declaration" },
        d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "go to definition" },
        K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "hove" },
        i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "go to implementation" },
        r = { "<cmd>lua vim.lsp.buf.references()<CR>", "show references" },
    },
    ["<C-k>"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "signature_help()" },
    ["[d"] = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "diagnostic prev" },
    ["]d"] = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "diagnostic next" },
}, {})

--[[
-- Supported languages
--]]

require("packer.plugs.lsp.rust")
require("packer.plugs.lsp.go")
require("packer.plugs.lsp.sql")
