return {
  {
    "miikanissi/modus-themes.nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd('colo modus')
    end
  },
  { 'HiPhish/rainbow-delimiters.nvim', },
  { "bhurlow/vim-parinfer" },
}
