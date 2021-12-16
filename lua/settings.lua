-- Any option could be searched with 
-- :h Option
--

vim.g.vscode_style = "dark"
vim.cmd('colorscheme vscode')
vim.cmd('filetype plugin indent on')
vim.cmd('set iskeyword+=-')
vim.cmd [[
  set nocompatible
  filetype plugin on
  syntax on
]]
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
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline= 2
-- shows mode in the console
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 100
vim.o.clipboard = "unnamedplus"
-- highlight the search items
vim.o.hlsearch = true
-- ignore case for search
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.wo.wrap = false
vim.wo.number = true
vim.o.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
