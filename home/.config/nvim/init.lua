-----------------------------------------------------
-- Imports
-----------------------------------------------------

require("lazy-setup")
require("mappings")

-----------------------------------------------------
-- Core settings
-----------------------------------------------------

-- Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indenting & auto indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Undo settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--  Bufferline specific
vim.opt.termguicolors = true
require("bufferline").setup({})

-----------------------------------------------------
-- Colorscheme
-----------------------------------------------------

-- Loading kanagawa
require("kanagawa").setup({
	overrides = function(colors)
		local theme = colors.theme
		return {
			NormalFloat = { bg = "none" },
			FloatBorder = { bg = "none" },
			FloatTitle = { bg = "none" },
			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
		}
	end,
})
vim.cmd([[colorscheme kanagawa]])

-----------------------------------------------------
-- Performance
-----------------------------------------------------

-- Disable providers for faster startup
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.loader.enable() -- (https://github.com/neovim/neovim/pull/22668)
