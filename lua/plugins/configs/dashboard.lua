-- vim.g.dashboard_disable_at_vimenter = 0
-- vim.g.dashboard_custom_footer = {'neovim rocks!'}
-- vim.g.dashboard_custom_header = {
--       "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--       "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⠀⠀⢀ ⡀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--       "⠀⠀⠀⠀⠀⠀⠀⣿⡟ ⠀⠀⠀⠀⠀⠀   ⠀⠀⠀⣺⣿⡿⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--       "⠀⠀  ⠀⠀⠀⣿⠇⠀⠀⠀⠀⣯  ⣿⡟⠀   ⢠⣤⠀⠀ ⠀⠀⣠⣤⣤⣤⣄⣤⣤",
--       "⠀⠀  ⠀⠀⢠⣿⠀⠀⠀⠀⠀⣿⠀⣰⡟⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠀⠀⣿⡟⢸⣿⡇⢀⣿",
--       "⠀⢸⣿⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⣿⢰⣿⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀ ⠀⢸⣿⠇⢸⣿⠀⢸⡏",
--       "⠀⠘⣿⣤⣤⡤⣿⠇    ⠀⣿⣿⠋⠀⠀⠀⢠⣤⣤⣿⣥⣤⡄ ⠀⣼⣿⠀⣸⡏⠀⣿⠃",
--       "⠀⠀⠈⠉⠉⠉⠉     ⠀⠉⠉⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁ ⠀⠉⠁⠀⠉⠁⠀⠉⠀",
--     }
--
-- vim.g.dashboard_default_executive = "telescope"
--
-- vim.g.dashboard_custom_section = {
-- --  a = {
-- --    description = { "  Vimwiki            " },
-- --    -- command = "<Plug>VimwikiIndex",
-- --    command = ":e ~/vimwiki/index.wiki",
-- --  },
--   g = {
--     description = { "  Find File          " },
--     command = "Telescope find_files",
--   },
--   h = {
--     description = { "  Recently Used Files" },
--     command = "Telescope oldfiles",
--   },
--   j = {
--     description = { "  Load Last Session  " },
--     command = "SessionLoad",
--   },
--   l = {
--     description = { "  Find Word          " },
--     command = "Telescope live_grep",
--   },
-- --  n = {
-- --    description = { "  Settings           " },
-- --    command = ":e " .. CONFIG_PATH .. "/lv-config.lua",
-- --  },
--   -- f = {
--   --   description = { "  Neovim Config Files" },
--   --   command = "Telescope find_files cwd=" .. CONFIG_PATH,
--   -- },
--   -- e = {description = {'  Marks              '}, command = 'Telescope marks'}
-- }
  -- local home = os.getenv('HOME')
  local db = require('dashboard')
  -- -- macos
  -- db.preview_command = 'cat | lolcat -F 0.3'
  -- -- linux
  -- db.preview_command = 'ueberzug'
  -- --
  -- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat'
  -- db.preview_file_height = 11
  -- db.preview_file_width = 70
  db.custom_header = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⠀⠀⢀ ⡀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⣿⡟ ⠀⠀⠀⠀⠀⠀   ⠀⠀⠀⣺⣿⡿⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀  ⠀⠀⠀⣿⠇⠀⠀⠀⠀⣯  ⣿⡟⠀   ⢠⣤⠀⠀ ⠀⠀⣠⣤⣤⣤⣄⣤⣤",
      "⠀⠀  ⠀⠀⢠⣿⠀⠀⠀⠀⠀⣿⠀⣰⡟⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠀⠀⣿⡟⢸⣿⡇⢀⣿",
      "⠀⢸⣿⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⣿⢰⣿⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀ ⠀⢸⣿⠇⢸⣿⠀⢸⡏",
      "⠀⠘⣿⣤⣤⡤⣿⠇    ⠀⣿⣿⠋⠀⠀⠀⢠⣤⣤⣿⣥⣤⡄ ⠀⣼⣿⠀⣸⡏⠀⣿⠃",
      "⠀⠀⠈⠉⠉⠉⠉     ⠀⠉⠉⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠁ ⠀⠉⠁⠀⠉⠁⠀⠉⠀",
    }
  db.custom_center = {
      -- {icon = '  ',
      -- desc = 'Recently latest session                  ',
      -- shortcut = 'SPC s l',
      -- action ='SessionLoad'},
      -- {icon = '  ',
      -- desc = 'Recently opened files                   ',
      -- action =  'DashboardFindHistory',
      -- shortcut = 'SPC f h'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'},
      -- {icon = '  ',
      -- desc = 'Open Personal dotfiles                  ',
      -- action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
      -- shortcut = 'SPC f d'},
    }
