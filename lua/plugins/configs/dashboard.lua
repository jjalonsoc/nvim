vim.g.dashboard_disable_at_vimenter = 0
vim.g.dashboard_custom_footer = {'neovim rocks!'}
vim.g.dashboard_custom_header = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⠀⠀⢀ ⡀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⣿⡟ ⠀⠀⠀⠀⠀⠀   ⠀⠀⠀⣺⣿⡿⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀  ⠀⠀⠀⣿⠇⠀⠀⠀⠀⣯  ⣿⡟⠀   ⢠⣤⠀⠀ ⠀⠀⣠⣤⣤⣤⣄⣤⣤",
      "⠀⠀  ⠀⠀⢠⣿⠀⠀⠀⠀⠀⣿⠀⣰⡟⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠀⠀⣿⡟⢸⣿⡇⢀⣿",
      "⠀⢸⣿⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⣿⢰⣿⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀ ⠀⢸⣿⠇⢸⣿⠀⢸⡏",
      "⠀⠘⣿⣤⣤⡤⣿⠇    ⠀⣿⣿⠋⠀⠀⠀⢠⣤⣤⣿⣥⣤⡄ ⠀⣼⣿⠀⣸⡏⠀⣿⠃",
      "⠀⠀⠈⠉⠉⠉⠉     ⠀⠉⠉⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁ ⠀⠉⠁⠀⠉⠁⠀⠉⠀",
    }

vim.g.dashboard_default_executive = "telescope"

vim.g.dashboard_custom_section = {
--  a = {
--    description = { "  Vimwiki            " },
--    -- command = "<Plug>VimwikiIndex",
--    command = ":e ~/vimwiki/index.wiki",
--  },
  g = {
    description = { "  Find File          " },
    command = "Telescope find_files",
  },
  h = {
    description = { "  Recently Used Files" },
    command = "Telescope oldfiles",
  },
  j = {
    description = { "  Load Last Session  " },
    command = "SessionLoad",
  },
  l = {
    description = { "  Find Word          " },
    command = "Telescope live_grep",
  },
--  n = {
--    description = { "  Settings           " },
--    command = ":e " .. CONFIG_PATH .. "/lv-config.lua",
--  },
  -- f = {
  --   description = { "  Neovim Config Files" },
  --   command = "Telescope find_files cwd=" .. CONFIG_PATH,
  -- },
  -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
}
