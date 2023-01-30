
-----------------------------------------
-- KEYBINDINGS
-----------------------------------------
-- better window movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- move block of in V-mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Down

-- All of this keep the cursor centered while moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("x", "<Leader>p", "\"_dP") -- Paste what is highlighted while keeping what is pasted in memory

vim.keymap.set("n", "<Leader>d", "\"_d") --delete without keeping track of it
vim.keymap.set("v", "<Leader>d", "\"_d")
-- resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

vim.keymap.set("n", ":Wq", ":wq")
vim.keymap.set("n", ":Qa", ":Qa")

-- better indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- Toggle the QuickFix window
-- vim.keymap.set("", "<C-q>", ":call QuickFixToggle()<CR>", { noremap = true, silent = true })

-- Enter also sets no highlighning
vim.keymap.set("n", "<CR>", ":noh<CR><CR>", { noremap = true, silent = true})
vim.keymap.set("n", ",d", ":b#<bar>bd#<CR>", { noremap = true, silent = true})

-- inside of terminal emulator esc allows editing outputs
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]], { noremap = true })
-----------------------------------------
-- NVIM-TREE
-----------------------------------------
-- vim.keymap.set('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>e', ':NvimTreeFindFileToggle<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '\\', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-----------------------------------------
-- TELESCOPE
-----------------------------------------
vim.keymap.set("n", "<Leader>r", ":Telescope grep_string<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>sn", ":lua require('telescope.builtin').find_files({cwd='~/vimwiki/'})<CR>", { noremap = true, silent = true })

-----------------------------------------
-- VIMWIKI
-----------------------------------------
-- vim.keymap.set("n", "<C-n>", "<Plug>VimwikiNextLink", { noremap = true, silent = false})
-- vim.keymap.set("n", "<C-p>", "<Plug>VimwikiPrevLink", { noremap = true, silent = false})
