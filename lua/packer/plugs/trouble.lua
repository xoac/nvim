--[[
--A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
--]]

packer.use({
	"folke/trouble.nvim",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
		require("trouble").setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})
	end,
})

--[[
-- Lua
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)
--]]

local wk = require("which-key")

wk.register({
	x = {
		name = "trouble",
		x = { "<cmd>TroubleToggle<cr>", "Toggle the list" },
		w = { "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>", "workspace diagnostics (lsp)" },
		d = { "<cmd>TroubleToggle lsp_document_diagnostics<cr>", "document diagnostics (lsp)" },
		q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
		l = { "<cmd>TroubleToggle loclist<cr>", "items from the window's location list" },
	},
	g = {
		R = { "<cmd>TroubleToggle lsp_references<cr>", "refs of the word under the cursor(lsp)" },
	},
}, { prefix = "<leader>" })
