require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"go",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"python",
		"typescript",
		"javascript",
		"html",
	},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
	auto_install = false,
	ignore_install = {},
	modules = {},
})
