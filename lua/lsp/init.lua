---
-- LSP setup
---

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
  lsp_zero.buffer_autoformat()
end)

lsp_zero.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»",
})

local mylsps = {
  "gopls",
  "nim_langserver",
  "clangd",
  "lua_ls",
  "html",
  "cssls",
  "powershell_es",
}

require("mason").setup({})
require("mason-lspconfig").setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = mylsps,
  handlers = {
    lsp_zero.default_setup,
  },
})

-- (Optional) configure lua language server
local lua_opts = lsp_zero.nvim_lua_ls()
require("lspconfig").lua_ls.setup(lua_opts)

-- Replace the language servers listed here
-- with the ones you have installed
lsp_zero.setup_servers(mylsps)

---
-- Autocompletion config
---

local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()
local cmp_format = require("lsp-zero").cmp_format({ details = true })

cmp.setup({
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    { name = 'mkdnflow' },
    { name = 'path' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  --- (Optional) Show source name in completion menu
  formatting = cmp_format,
  experimental = {
    ghost_text = true,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})

require("luasnip.loaders.from_vscode").lazy_load()
