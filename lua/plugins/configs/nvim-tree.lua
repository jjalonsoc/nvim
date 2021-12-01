-- vim.g.nvim_tree_gitignore = 0 --Uses gitignore files to ignore
vim.g.nvim_tree_quit_on_open = 0
vim.g.nvim_tree_indent_markers = 1 --Highlights the cursor when tree is being used
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ":t"
vim.g.nvim_tree_allow_resize = 1 --allows resizing
vim.g.nvim_tree_auto_ignore_ft = { "startify", "dashboard" } --in this list tree is not activated
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup {
  disable_netrw       = true, --netrw is the neovim file explorer
  hijack_netrw        = true,
  open_on_setup       = true,
  ignore_ft_on_setup  = {"startify", "dashboard"}, --in this list tree is not activated
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  auto_close          = true,
  open_on_tab         = false,
  hijack_cursor       = true,
  update_cwd          = false,
  diagnostics         = {
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {".git", ".cache", ".github"}
  },
  view = {
    width = 30,
    height = 30,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        {key = {"l", "<CR>", "o"}, cb = tree_cb("edit")},
        {key = "h", cb = tree_cb("close_node")},
        {key = "v", cb = tree_cb("vsplit")},
      }
    }
  }
}

