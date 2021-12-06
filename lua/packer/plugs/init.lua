--[[
-- This file load other plugins and their settings:
-- one file 	- one plugin and settings
-- one folder 	- group of plugins and settings that give some functions together
--
-- it's allowed to inline files without any configuration
--]]

-- packer is loaded with lua/packer/plugins.lua

--[[
---- Plugins that are global and required by other plugins
--]]

-- @packer - global variable
require("packer.plugs.packer")
-- IMPORTANT: this plugin is used to help with commands and to create mapping!
--            see this file for reserved group. Use `local wk = require("which-key")`
--            for configure own mappings! more: https://github.com/folke/which-key.nvim#%EF%B8%8F-mappings
require("packer.plugs.which-key")
require("packer.plugs.lsp") -- load lsp config and supported languages

--[[
-- Tools
--]]

require("packer.plugs.telescope") -- is a highly extendable fuzzy finder over lists
require("packer.plugs.gitsigns") -- Super fast git decorations
--[[
-- UI
--]]

require("packer.plugs.tokyonight") -- Theme
packer.use({ "folke/lsp-colors.nvim" }) -- Automatically creates missing LSP diagnostics highlight groups for color schemes that don't yet support the Neovim 0.5 builtin lsp client.
require("packer.plugs.indent-blankline") -- indeting with colorize
require("packer.plugs.lightbulb")
require("packer.plugs.trouble") -- A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
require("packer.plugs.nvim-treesitter") -- Tree-sitter is a parser generator tool and an incremental parsing library

require("packer.plugs.bufferline") -- buffer line (with minimal tab integration)
require("packer.plugs.windline") -- statusline
require("packer.plugs.twilight") -- dims inactive portions of the code you're editing.

--[[
---- General any lang tools
--]]
require("packer.plugs.formatter") -- format buffers
require("packer.plugs.comment") -- Smart and Powerful commenting
require("packer.plugs.renamer") -- Visual-Studio-Code-like renaming UI for Neovim
require("packer.plugs.luasnip") -- snippets
packer.use({ "godlygeek/tabular" }) -- Allow easy align text with special char
