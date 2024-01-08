local M = {
  "phaazon/hop.nvim",
}
function M.config()
  require('hop').setup({
    case_insensitive = true,
    char2_fallback_key = '<CR>',
  })
  vim.api.nvim_set_keymap('n', 's', "<cmd>lua require'hop'.hint_char2()<cr>", {noremap = true})
end

return M

