require("mason").setup()
require("mason-nvim-dap").setup({
	ensure_installed = { "codelldb" },
	automatic_installation = false,
	handlers = {},
})

-- DAP UI
local dap, dapui = require("dap"), require("dapui")
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

-- Mappings
vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "<d>ebug <b>reakpoint" })
vim.keymap.set("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "<d>ebugging <r>un" })
