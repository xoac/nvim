packer.use({
	"L3MON4D3/LuaSnip", -- Snippets plugin
	requires = {
		{ "rafamadriz/friendly-snippets" }, -- Snippets collection for a set of different programming languages for faster development.
	},
	config = function()
		require("luasnip/loaders/from_vscode").lazy_load()
	end,
})
