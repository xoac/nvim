packer.use({
	"mhartington/formatter.nvim",
    config = function()
		require("formatter").setup({
			filetype = {
				rust = {
					-- Rustfmt
					function()
						return {
							exe = "rustfmt",
							args = { "--emit=stdout" },
							stdin = true,
						}
					end,
				},
				lua = {
					function()
						return {
							exe = "stylua",
							stdin = false,
						}
					end,
				},
				python = {
					function()
						return {
							exe = "python3 -m autopep8",
							args = {
								"--in-place --aggressive --aggressive",
								vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
							},
							stdin = false,
						}
					end,
				},
				javascript = {
					-- prettier
					function()
						return {
							exe = "prettier",
							args = {
								"--stdin-filepath",
								vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
								"--single-quote",
							},
							stdin = true,
						}
					end,
				},
				sh = {
					-- Shell Script Formatter
					function()
						return {
							exe = "shfmt",
							args = { "-i", 2 },
							stdin = true,
						}
					end,
				},
			},
		})
	end,
})

-- To enable format on save, you can create a autocmd to trigger the formater using FormatWrite, which will format and write to the current saved file.
vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua FormatWrite
augroup END
]],
	true
)
