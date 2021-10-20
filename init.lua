require('plugins')
require('options')
require('keybindings')
require('nvim-tree-config')
require('lualine-config') -- status-line
require('bufferline-config')
require('treesitter-config')
require('autopairs-config')
-- which key must be required after keybindings, where the map leader is defined.
require('whichkey-config')
require('telescope-config')
require('lsp')
require('dashboard-config')
require('gitsigns-config')
vim.cmd('colorscheme nord')

