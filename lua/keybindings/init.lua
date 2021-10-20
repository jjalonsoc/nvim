
-----------------------------------------
-- KEYBINDINGS
-----------------------------------------
vim.g.mapleader = ' '
-----------------------------------------
-- 
-----------------------------------------
-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- resize with arrows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })


-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Toggle the QuickFix window
-- vim.api.nvim_set_keymap("", "<C-q>", ":call QuickFixToggle()<CR>", { noremap = true, silent = true })


-----------------------------------------
-- NVIM-TREE
-----------------------------------------
vim.api.nvim_set_keymap('n', '<space>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-----------------------------------------
-- TELESCOPE
-----------------------------------------
vim.api.nvim_set_keymap("n", " r", ":Telescope grep_string<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope find_files<CR>", { noremap = true, silent = true })
