
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require('lspconfig')

-----------------------------------------------------------
-- HTML
-----------------------------------------------------------

lspconfig.html.setup {
  capabilities = capabilities,
}


-----------------------------------------------------------
-- TYPESCRIPT SERVER
-----------------------------------------------------------


lspconfig.tsserver.setup {
  capabilities = capabilities,
}

-----------------------------------------------------------
-- PYTHON
-----------------------------------------------------------


lspconfig.pyright.setup {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  -- root_dir = function(fname)
  --       local root_files = {
  --         'pyproject.toml',
  --         'setup.py',
  --         'setup.cfg',
  --         'requirements.txt',
  --         'Pipfile',
  --         'pyrightconfig.json',
  --       }
  --       return lspconfig.util.root_pattern(unpack(root_files))(fname) or lspconfig.util.find_git_ancestor(fname) or lspconfig.util.path.dirname(fname)
  --     end,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true
      }
    }
  }
}
-----------------------------------------------------------
-- LUA
-----------------------------------------------------------
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path ='/home/jjalonsoc/.config/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

lspconfig.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

