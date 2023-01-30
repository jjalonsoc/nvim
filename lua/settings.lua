vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 10
vim.o.fileencoding = 'utf-8'
-- comand line height, initial value = 1
vim.o.cmdheight = 2
-- when horizontal split, the cursor is in the down screen if true
vim.o.splitbelow = true
-- when vertical split, the cursor is in the right screen if true
vim.o.splitright = true
-- if posible, use all the colors for terminal
vim.o.conceallevel = 0
vim.o.showtabline= 2
-- shows mode in the console
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"
-- ignore case for search
vim.o.ignorecase = true
vim.opt.cursorline = true
vim.o.ls = 1
vim.o.ch = 1

-- from the primeagen
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = true -- highlight the search items
vim.opt.incsearch = true -- highlight the incremental search items

vim.opt.termguicolors = true -- good colors

vim.opt.scrolloff = 8 -- scroll leeaves 8 lines before the end of the file

vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.opt.background = "dark"
-- vim.cmd([[colorscheme tokyonight]])
vim.cmd[[colorscheme vscode]]
