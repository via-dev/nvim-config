return {
	{
		"cryptomilk/nightcity.nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("nightcity").setup({ style = "afterlife" })
			vim.cmd([[ colo nightcity ]])
		end,
	},
	{ "HiPhish/rainbow-delimiters.nvim" },
	{ "bhurlow/vim-parinfer" },
}
