vim.g.mapleader = " "

-- https://github.com/folke/lazy.nvim

-- Bootstrapping lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Loading lazy.nvim
require("lazy").setup("plugins", {
	defaults = {
		lazy = false,
		version = nil, -- dont use version="*"
	},
	install = {
		missing = true,
	},
})
