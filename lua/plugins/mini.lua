return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.bracketed').setup()
      require('mini.comment').setup()
      require('mini.diff').setup({
        view = {
          style = 'sign',
          signs = { add = '+', change = '~', delete = '-' },
        }
      })
      require('mini.files').setup()
      require('mini.git').setup()
      require('mini.hipatterns').setup({
        highlighters = {
          -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
          fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
          todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
          note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

          -- Highlight hex color strings (`#rrggbb`) using that color
          hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
        },
      })
      require('mini.indentscope').setup()
      require('mini.notify').setup({
        config = function()
          vim.notify = require('mini.notify').make_notify()
        end
      })
      require('mini.pairs').setup()
      require('mini.pick').setup()
      require('mini.sessions').setup()
      require('mini.starter').setup()
      require('mini.statusline').setup()
      require('mini.tabline').setup()
      require('mini.trailspace').setup()
    end
  },
}
