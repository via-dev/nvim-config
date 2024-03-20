return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_hl_headers = 1
      vim.g.vimwiki_list = {
        {
          path = '~/vimwiki',
          syntax = 'markdown',
          ext = '.md',
        },
      }
    end,
  },
}
