--------------------------------------------------------
-- Neovim 0.6.0
--------------------------------------------------------
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

--------------------------------------------------------
-- Neovim 0.5.x
--------------------------------------------------------
-- local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
-- for type, icon in pairs(signs) do
--     local hl = "LspDiagnosticsSign" .. type
--     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = 10 })
-- end


-- global config for diagnostic
vim.diagnostic.config({
  underline = false,
  virtual_text = false,
  signs = true,
  severity_sort = true,
})
