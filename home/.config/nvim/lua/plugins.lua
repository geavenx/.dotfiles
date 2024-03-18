return {

	-------------------------------------------------------
	-- Buffer management
	-------------------------------------------------------

	-- Harpoon2 (https://github.com/ThePrimeagen/harpoon/tree/harpoon2)
	--
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-telescope/telescope.nvim" },
	},

	-- Telescope (https://github.com/nvim-telescope/telescope.nvim)
	--
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",

				build = "make",

				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
	},

	-- Treesitter (https://github.com/nvim-treesitter/nvim-treesitter)
	--
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- FTerm (https://github.com/numToStr/FTerm.nvim)
	--

	{ "numToStr/FTerm.nvim" },

	-------------------------------------------------------
	-- UI & UX Improvements
	-------------------------------------------------------

	-- Which-key (https://github.com/folke/which-key.nvim)
	--
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},

	-- Undotree (https://github.com/mbbill/undotree)
	--
	{ "mbbill/undotree" },

	-- Transparent (https://github.com/xiyaowong/transparent.nvim)
	--
	{ "xiyaowong/transparent.nvim" },

	-- nvim-web-devicons (https://github.com/nvim-tree/nvim-web-devicons)
	--
	{ "nvim-tree/nvim-web-devicons" },

	-------------------------------------------------------
	-- LSP and Formatting
	-------------------------------------------------------

	-- Mason arsenal!
	-- (https://github.com/williamboman/mason.nvim) && /
	-- (https://github.com/williamboman/mason-lspconfig.nvim) && /
	-- (https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
	--
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },

	-- Lsp-zero (https://github.com/VonHeikemen/lsp-zero.nvim/tree/v3.x)
	--
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },

	-- Lspconfig (https://github.com/neovim/nvim-lspconfig)
	--
	{ "neovim/nvim-lspconfig" },

	-- cmp-nvim-lsp (https://github.com/hrsh7th/cmp-nvim-lsp)
	--
	{ "hrsh7th/cmp-nvim-lsp" },

	-- nvim-cmp (https://github.com/hrsh7th/nvim-cmp)
	--
	{ "hrsh7th/nvim-cmp" },

	-- Lua-snip (https://github.com/L3MON4D3/LuaSnip)
	--
	{
		"L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "v2.*",
		build = "make install_jsregexp",
	},

	-- cmp-luasnip (https://github.com/saadparwaiz1/cmp_luasnip)
	--
	{ "saadparwaiz1/cmp_luasnip" },

	-- NeoDev (https://github.com/folke/neodev.nvim)
	--
	{ "folke/neodev.nvim", opts = {} },

	-- conform (https://github.com/stevearc/conform.nvim)
	--
	{ "stevearc/conform.nvim", opts = {} },

	{ "elkowar/yuck.vim" },

	-------------------------------------------------------
	-- Git helpers
	-------------------------------------------------------

	-- Diffview (https://github.com/sindrets/diffview.nvim)
	--
	{ "https://github.com/sindrets/diffview.nvim" },

	-- vim-fugitive (https://github.com/tpope/vim-fugitive)
	--
	{ "tpope/vim-fugitive" },

	-- gitsigns (https://github.com/lewis6991/gitsigns.nvim)
	--
	{ "lewis6991/gitsigns.nvim" },

	-------------------------------------------------------
	-- AI Coding
	-------------------------------------------------------

	-- Github Copilot (https://github.com/github/copilot.vim)
	--
	{ "github/copilot.vim" },

	-------------------------------------------------------
	-- Editing
	-------------------------------------------------------

	-- Autoclose (https://github.com/m4xshen/autoclose.nvim)
	--
	{ "m4xshen/autoclose.nvim" },

	-- Obsidian.nvim (https://github.com/epwalsh/obsidian.nvim)
	--
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		ft = "markdown",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- Comment.nvim (https://github.com/numToStr/Comment.nvim)
	--
	{
		"numToStr/Comment.nvim",
		lazy = false,
		opts = {}, -- VISUAL MODE: gc, gb; NORMAL MODE: gcc, gcb, gcA...
	},

	-------------------------------------------------------
	-- colorschemes
	-------------------------------------------------------

	-- Kanagawa (https://github.com/rebelot/kanagawa.nvim)
	--
	{ "rebelot/kanagawa.nvim" },

	-- Tokyonight (https://github.com/folke/tokyonight.nvim)
	--
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-------------------------------------------------------
	-- Debugging
	-------------------------------------------------------

	-- Nvim-dap (https://github.com/mfussenegger/nvim-dap)
	--
	{ "mfussenegger/nvim-dap" },

	-- Mason-nvim-dap (https://github.com/jay-babu/mason-nvim-dap.nvim)
	--
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
		event = "VeryLazy",
	},

	-- Nvim-dap-ui (https://github.com/rcarriga/nvim-dap-ui)
	--
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
		event = "VeryLazy",
	},

	-- nvim-dap-go (https://github.com/leoluz/nvim-dap-go)
	--
	{ "leoluz/nvim-dap-go" },
}
