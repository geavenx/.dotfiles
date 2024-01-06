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
		dependencies = { "nvim-lua/plenary.nvim" },
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
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
		},
	},

	-- Undotree (https://github.com/mbbill/undotree)
	--
	{ "mbbill/undotree" },

	-- Bufferline (https://github.com/akinsho/bufferline.nvim)
	--
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Transparent (https://github.com/xiyaowong/transparent.nvim)
	--
	{ "xiyaowong/transparent.nvim" },

	-- nvim-web-devicons (https://github.com/nvim-tree/nvim-web-devicons)
	--
	{ "nvim-tree/nvim-web-devicons" },

	-------------------------------------------------------
	-- LSP and Formatting
	-------------------------------------------------------

	-- Mason (https://github.com/williamboman/mason.nvim) & (https://github.com/williamboman/mason-lspconfig.nvim)
	--
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

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
	{ "L3MON4D3/LuaSnip" },

	-- NeoDev (https://github.com/folke/neodev.nvim)
	--
	{ "folke/neodev.nvim", opts = {} },

	-- conform (https://github.com/stevearc/conform.nvim)
	--
	{ "stevearc/conform.nvim", opts = {} },

	-------------------------------------------------------
	-- Git helpers
	-------------------------------------------------------

	-- Diffview (https://github.com/sindrets/diffview.nvim)
	--
	{ "https://github.com/sindrets/diffview.nvim" },

	-- vim-fugitive (https://github.com/tpope/vim-fugitive)
	--
	{ "tpope/vim-fugitive" },

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

	-------------------------------------------------------
	-- colorschemes
	-------------------------------------------------------

	-- Kanagawa (https://github.com/rebelot/kanagawa.nvim)
	--
	{ "rebelot/kanagawa.nvim" },
}
