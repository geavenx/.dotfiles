require("mason").setup()
require("mason-nvim-dap").setup({
	ensure_installed = {
		"codelldb",
		"delve",
	},
	automatic_installation = false,
	handlers = {},
})

-- DAP UI
local dap, dapui, debuggers = require("dap"), require("dapui"), require("debuggers")

-- nvim-dap-go
require("dap-go").setup()

dap.adapters.codelldb = {
	type = "server",
	port = "13000",
	executable = {
		command = "/usr/bin/codelldb",
		args = { "--port", "13000" },
	},
}
dap.configurations.cpp = {
	debuggers.codelldb,
}

dapui.setup()
dap.listeners.before.attach.dapui_config = function()
	dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
	dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
end

vim.fn.sign_define("DapBreakpoint", { text = "➜", texthl = "", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })

-- Mappings
vim.keymap.set("n", "<leader>db", function()
	dap.toggle_breakpoint()
end, { desc = "<d>ebug <b>reakpoint" })
vim.keymap.set("n", "<leader>dr", function()
	dap.continue()
end, { desc = "<d>ebugging <r>un" })
