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

vim.opt.termguicolors = true -- better colors on vim :term
vim.opt.guicursor = "" -- block cursor on insert mode!

-----------------------------------------------------
-- Colorscheme
-----------------------------------------------------

-- [ Loading kanagawa ]
-- require("kanagawa").setup({
-- 	overrides = function(colors)
-- 		local theme = colors.theme
-- 		return {
-- 			NormalFloat = { bg = "none" },
-- 			FloatBorder = { bg = "none" },
-- 			FloatTitle = { bg = "none" },
-- 			NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
-- 			LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 			MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 		}
-- 	end,
-- })
-- vim.cmd([[colorscheme kanagawa]])
--
-- [ Loading tokyonight ]
require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(highlights, colors) end,
})

vim.cmd([[colorscheme tokyonight]])

-----------------------------------------------------
-- Performance
-----------------------------------------------------

-- Disable providers for faster startup
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

vim.loader.enable() -- (https://github.com/neovim/neovim/pull/22668)
