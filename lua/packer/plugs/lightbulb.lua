
  -- The plugin shows a lightbulb in the sign column whenever a textDocument/codeAction is available at the current cursor position.
packer.use(
    {
        'kosayoda/nvim-lightbulb',
    }
)

vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]])

