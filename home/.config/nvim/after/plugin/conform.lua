require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		javascriptreact = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		yml = { "prettier" },
		toml = { "prettier" },
		rust = { "rustfmt" },
		go = { "gofmt" },
		cpp = { "clang-format" },
		hpp = { "clang-format" },
	},
	format_on_save = {
		lsp_fallback = true,
	},

	vim.keymap.set("n", "<leader>f", function()
		require("conform").format({
			lsp_fallback = true,
		})
	end, { desc = "<f>ormat file" }),
})
