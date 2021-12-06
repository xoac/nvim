packer.use({
	"akinsho/bufferline.nvim",
	requires = "kyazdani42/nvim-web-devicons",
})

require("bufferline").setup({})

local wk = require("which-key")

wk.register({
	["[b"] = { ":BufferLineCycleNext<CR>", "Next buffer" },
	["]b"] = { ":BufferLineCyclePrev<CR>", "Prev buffer" },
})
