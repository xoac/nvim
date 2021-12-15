-- tabs and intends
vim.cmd("set ts=4") -- Insert 4 spaces for a tab
vim.cmd("set sw=4") -- Change the number of space characters inserted for indentation
vim.cmd("set expandtab") -- Converts tabs to spaces
vim.o.showtabline = 2 -- Always show tabs
vim.bo.smartindent = true -- Makes indenting smart

vim.wo.relativenumber = true -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.cmdheight = 2 -- More space for displaying messages

vim.o.mouse = "a" -- Enable your mouse, line number not selectable by mouse
vim.o.splitbelow = true -- Horizontal splits will be automatily below

vim.o.updatetime = 300 -- faster code completion

vim.opt.termguicolors = true

vim.cmd("set spell spelllang=en_us,pl")

vim.cmd("filetype plugin on") -- filetype detection
vim.cmd("set guifont=Cascadia\\ Code\\ Light,Hack\\ Nerd\\ Font,Adobe\\ Arabic:h18")
