local use = require('packer').use
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- use {'folke/tokyonight.nvim'}
  use {'Mofiqul/vscode.nvim'}
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}
  use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = function() require'nvim-tree'.setup {} end }
  use {'windwp/nvim-autopairs'}
  use {'folke/which-key.nvim'}
  use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use {'mhinz/vim-startify'}
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}, }
  use {'phaazon/hop.nvim', event = "VimEnter", config = [[require('plugins.configs.nvim-hop')]] }
  use "terrortylor/nvim-comment"
  use {'akinsho/toggleterm.nvim'}
   -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufRead",
    setup = function()
      vim.g.indentLine_enabled = 1
      vim.g.indent_blankline_char = "▏"

      vim.g.indent_blankline_filetype_exclude = {
        "help",
        "terminal",
      }
      vim.g.indent_blankline_buftype_exclude = { "terminal" }

      vim.g.indent_blankline_show_trailing_blankline_indent = true
      vim.g.indent_blankline_show_first_indent_level = true
    end,
  }
end)
