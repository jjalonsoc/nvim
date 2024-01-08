local M = {
  "mhinz/vim-startify",
}

function M.config()
  -- local icons = require "jvim.icons"
  vim.cmd[[ let g:startify_padding_left = 40 ]]
  vim.cmd[[ let g:startify_change_to_vcs_root = 1 ]]
end

return M
