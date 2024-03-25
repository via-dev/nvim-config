return {
  { "bhurlow/vim-parinfer" },
  { "lewis6991/gitsigns.nvim", opts = {} },
  { "tpope/vim-fugitive" },
  { "folke/neodev.nvim",       opts = {} },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "folke/twilight.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup({
        -- your config goes here
        -- or just leave it empty :)
      })
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
}
