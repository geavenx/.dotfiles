-- Better Lua LSP
require("neodev").setup()

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
	handlers = { lsp_zero.default_setup },
})
