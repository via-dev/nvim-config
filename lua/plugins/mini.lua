return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { 'echasnovski/mini.bracketed',   version = false, opts = {} },
  { 'echasnovski/mini.comment',     version = false, opts = {} },
  { 'echasnovski/mini.indentscope', version = false, opts = {} },
  {
    'echasnovski/mini.notify',
    version = false,
    opts = {},
    config = function()
      vim.notify = require('mini.notify').make_notify()
    end
  },
  { 'echasnovski/mini.pairs',      version = false, opts = {} },
  { 'echasnovski/mini.pick',       version = false, opts = {} },
  { 'echasnovski/mini.sessions',   version = false, opts = {} },
  { 'echasnovski/mini.starter',    version = false, opts = {} },
  { 'echasnovski/mini.statusline', version = false, opts = {} },
  { 'echasnovski/mini.tabline',    version = false, opts = {} },
  { 'echasnovski/mini.trailspace', version = false, opts = {} },
}
