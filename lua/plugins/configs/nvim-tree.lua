
-- vim.g.nvim_tree_git_hl = 1

-- local status_ok, nvim_tree = pcall(require, "nvim-tree")
-- if not status_ok then
--   return
-- end

-- local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
-- if not config_status_ok then
--   return
-- end
--
-- local tree_cb = nvim_tree_config.nvim_tree_callback

require'nvim-tree'.setup {
  disable_netrw       = true, --netrw is the neovim file explorer
  hijack_netrw        = true,
  -- open_on_setup       = true, --deprecated
  -- open_on_setup_file  = true,
  -- ignore_ft_on_setup  = {"startify"}, --in this list tree is not activated
  -- auto_close          = true,
  -- open_on_tab         = false,
  hijack_cursor       = true,
  -- update_to_buf_dir   = {
  --   enable = true,
  --   auto_open = true,
  -- },
  auto_reload_on_write = true,
  diagnostics         = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable      = true,
    update_root  = true,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  view = {
    centralize_selection = true,
    width = 30,
    -- height = 30,
    hide_root_folder = false,
    side = 'left',
    signcolumn = 'yes',
    -- auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        -- {key = {"l", "<CR>", "o"}, action= "edit"},
        { key = { "<CR>", "o", "l"}, action = "edit", mode = "n" },
        { key = "h", action = "close_node"},
        { key = "v", action = "vsplit"},
      },
    },
    float = {
      enable = false
    },
    number = false,
    relativenumber = false,
  },
  -- disable_window_picker = 0,
  -- show_icons = {
  --   git = 1,
  --   folders = 1,
  --   files = 1,
  --   folder_arrows = 1,
  --   tree_width = 40,
  -- },
  -- system_open = {
  --   cmd  = nil,
  --   args = {}
  -- },
  -- filters = {
  --   dotfiles = false,
  --   custom = {".git", ".cache", ".github"},
  --   exclude = {".envrc$", ".gitignore"}
  -- },
  actions = {
    open_file = {
      quit_on_open = false
    },
  },
  renderer = {
    -- indent_markers = {
    --   enable = true,
    -- }
      -- indent_markers = {
        icons = {
          webdev_colors = true,
          git_placement = "before",
          -- padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "✗",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        }
      -- }
  }
}

