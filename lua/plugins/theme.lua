return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd "colo tokyonight-night"
    end,
    opts = {},
  }
}
