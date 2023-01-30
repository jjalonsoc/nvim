local opts = {
  mode = "n", -- NORMAL mode
  prefix = " ",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}
local mappings = {
  ["."] = "LunarConfig",
  ["/"] = "Comment",
  ["c"] = "Close Buffer",
  ["e"] = "Explorer",
  ["f"] = "Find File",
  ["h"] = "No Highlight",
  b = {
    name = "Buffers",
    j = { "<cmd>BufferPick<cr>", "jump to buffer" },
    f = { "<cmd>Telescope buffers<cr>", "Find buffer" },
    w = { "<cmd>BufferWipeout<cr>", "wipeout buffer" },
    e = {
      "<cmd>BufferCloseAllButCurrent<cr>",
      "close all but current buffer",
    },
    h = { "<cmd>BufferCloseBuffersLeft<cr>", "close all buffers to the left" },
    l = {
      "<cmd>BufferCloseBuffersRight<cr>",
      "close all BufferLines to the right",
    },
    D = {
      "<cmd>BufferOrderByDirectory<cr>",
      "sort BufferLines automatically by directory",
    },
    L = {
      "<cmd>BufferOrderByLanguage<cr>",
      "sort BufferLines automatically by language",
    },
  },
  p = {
    name = "Packer",
    c = { "<cmd>PackerCompile<cr>", "Compile" },
    i = { "<cmd>PackerInstall<cr>", "Install" },
    r = { "<cmd>lua require('lv-utils').reload_lv_config()<cr>", "Reload" },
    s = { "<cmd>PackerSync<cr>", "Sync" },
    u = { "<cmd>PackerUpdate<cr>", "Update" },
  },

--  d = {
--    name = "Debug",
--    t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
--    b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
--    c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--    C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
--    d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
--    g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
--    i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
--    o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
--    u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
--    p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
--    r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
--    s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
--    q = { "<cmd>lua require'dap'.stop()<cr>", "Quit" },
--  },
--  g = {
--    name = "Git",
--    j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
--    k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
--    l = { "<cmd>lua require 'gitsigns'.blame_line()<cr>", "Blame" },
--    p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
--    r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
--    R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
--    s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
--    u = {
--      "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
--      "Undo Stage Hunk",
--    },
--    o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
--    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
--    c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
--    C = {
--      "<cmd>Telescope git_bcommits<cr>",
--      "Checkout commit(for current file)",
--    },
--  },
--  l = {
--    name = "LSP",
--    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
--    d = {
--      "<cmd>Telescope lsp_document_diagnostics<cr>",
--      "Document Diagnostics",
--    },
--    w = {
--      "<cmd>Telescope lsp_workspace_diagnostics<cr>",
--      "Workspace Diagnostics",
--    },
--    f = { "<cmd>Neoformat<cr>", "Format" },
--    i = { "<cmd>LspInfo<cr>", "Info" },
--    j = { "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<cr>", "Next Diagnostic" },
--    k = { "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<cr>", "Prev Diagnostic" },
--    q = { "<cmd>Telescope quickfix<cr>", "Quickfix" },
--    r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
--    s = {
--      O.plugin.symbol_outline.active and "<cmd>SymbolsOutline<cr>" or "<cmd> Telescope lsp_document_symbols<cr>",
--      "Document Symbols",
--    },
--    S = {
--      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
--      "Workspace Symbols",
--    },
--  },
  s = {
    name = "Search",
    b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
    M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
    R = { "<cmd>Telescope registers<cr>", "Registers" },
    t = { "<cmd>Telescope live_grep<cr>", "Text" },
  },
  S = {
    name = "Session",
    s = { "<cmd>SessionSave<cr>", "Save Session" },
    l = { "<cmd>SessionLoad<cr>", "Load Session" },
  },
  T = {
    name = "Treesitter",
    i = { ":TSConfigInfo<cr>", "Info" },
  },
}
local wk = require("which-key")
wk.register(mappings, opts)
