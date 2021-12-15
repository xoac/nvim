-- Configure Neovim to automatically run :PackerCompile whenever init.lua is updated with an autocommand:
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua  | PackerCompile
  augroup end
]])

if not packer then
    packer = require("packer")
    packer.init()
end

-- DEPRECATED: For each plugin create file in lua/packer/plugs/<plugin_name>.lua

return packer.startup(function()
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- [[
    -- General user interface
    -- ]]

    -- Highlight, edit, and navigate code using a fast incremental parsing library

    --[[
    -- Program languages
    --]]

    -- :MarkdownPreview / :MarkdownPreviewStop
    use({ "iamcco/markdown-preview.nvim", config = "vim.call('mkdp#util#install')" })
end)
