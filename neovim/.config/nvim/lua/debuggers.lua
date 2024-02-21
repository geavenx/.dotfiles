local debuggers = {}

debuggers.codelldb = {
	name = "codelldb",
	type = "codelldb",
	request = "launch",
	program = function()
		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
	end,
	cwd = "${workspaceFolder}",
	args = function()
		local useArgs = vim.fn.input("Use arguments? (y/N): ")
		if useArgs == "y" or useArgs == "Y" then
			local arguments = vim.fn.input("Program arguments: ", vim.fn.getcwd() .. "/", "file")
			return vim.fn.split(arguments, " ", true)
		end
	end,
	stopOnEntry = false,
}

debuggers.lldb = {
	name = "lldb",
	type = "lldb",
	request = "launch",
	program = function()
		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	args = function()
		local useArgs = vim.fn.input("Use arguments? (y/N): ")
		if useArgs == "y" or useArgs == "Y" then
			local arguments = vim.fn.input("Program arguments: ", vim.fn.getcwd() .. "/", "file")
			return vim.fn.split(arguments, " ", true)
		end
	end,
	runInTerminal = false,
}

debuggers.gdb = {
	name = "gdb",
	type = "gdb",
	request = "launch",
	program = function()
		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
	end,
	cwd = "${workspaceFolder}",
	args = function()
		local useArgs = vim.fn.input("Use arguments? (y/N): ")
		if useArgs == "y" or useArgs == "Y" then
			return vim.fn.input("Program arguments: ", vim.fn.getcwd() .. "/", "file")
		end
	end,
	stopAtBegginingOfMainSubprogram = false,
}

return debuggers
