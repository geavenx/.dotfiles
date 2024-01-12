-- Better Lua LSP
require("neodev").setup()

local cmp = require("cmp")
--local cmp_action = require("lsp-zero").cmp_action()

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		["<CR>"] = cmp.mapping.confirm({ select = false }),
		["<C-Space>"] = cmp.mapping.complete(),
	}),

	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
})

local lsp_zero = require("lsp-zero") --.preset({})

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
end)

-- MANUALLY INSTALL FORMATTERS = STYLUA, BLACK, PRETTIERD, RUSTFMT, GOFUMPT
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		-- LSPs
		"pyright",
		"gopls",
		"lua_ls",
		"tsserver",
	},
	handlers = {
		lsp_zero.default_setup,
	},
})
