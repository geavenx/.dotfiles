vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "<g>it <s>ee" })

local geavenx_Fugitive = vim.api.nvim_create_augroup("geavenx_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
	group = geavenx_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "<leader>gp", function()
			vim.cmd.Git("push")
		end, { buffer = bufnr, remap = false, desc = "<g>it <p>ush" })

		-- rebase always
		vim.keymap.set("n", "<leader>gP", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, { buffer = bufnr, remap = false, desc = "<g>it <P>ull" })

		-- NOTE: It allows me to easily set the branch i am pushing and any tracking
		-- needed if i did not set the branch up correctly
		vim.keymap.set(
			"n",
			"<leader>t",
			":Git push -u origin ",
			{ buffer = bufnr, remap = false, desc = "<g>it push -u <o>rigin" }
		)
	end,
})
