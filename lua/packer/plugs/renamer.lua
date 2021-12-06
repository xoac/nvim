packer.use({
	"filipdutescu/renamer.nvim",
	branch = "master",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
		require("renamer").setup()
	end,
})

local wk = require("which-key")

wk.register({
	["<F2>"] = { '<cmd>lua require("renamer").rename()<cr>', "rename" },
}, { mode = "i" })

wk.register({
	["rn"] = { '<cmd>lua require("renamer").rename()<cr>', "rename" },
}, { prefix = "<leader>", mode = "n" })

wk.register({
	["rn"] = { '<cmd>lua require("renamer").rename()<cr>', "rename" },
}, { prefix = "<leader>", mode = "v" })
