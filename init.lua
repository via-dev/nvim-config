-- Set colorscheme
vim.o.termguicolors = true

local indent = 2
vim.o.tabstop = indent
vim.o.shiftwidth = indent
vim.o.softtabstop = indent
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.autoindent = true

vim.o.mouse = "a"
vim.o.wildmenu = true
vim.o.incsearch = true
vim.o.hidden = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.path = "**"
vim.o.wrap = true
vim.o.linebreak = true
vim.o.clipboard = "unnamedplus"

vim.o.showmode = false
vim.g.have_nerd_font = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.list = true
vim.opt.listchars = { tab = ". ", trail = "#", nbsp = "␣" }
vim.o.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open file browser" })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local uv = vim.uv or vim.loop

-- Auto-install lazy.nvim if not present
if not uv.fs_stat(lazypath) then
  print("Installing lazy.nvim....")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  print("Done.")
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("lsp")
