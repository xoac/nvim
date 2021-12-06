-- Init configuration file from nvim

-- FIXME: what this variable show
DATA_PATH = vim.fn.stdpath("data")

-- Load settings (like tab = 4 spaces etc..)
require("settings")
--Package configurations
require("packer.loader")
-- require("packer.plugins")
require("packer.plugs")

-- Key Mappings
-- require("keymap")


-- Load settings for LSP
-- require("lsp")

--[[
--   UI
--]]

