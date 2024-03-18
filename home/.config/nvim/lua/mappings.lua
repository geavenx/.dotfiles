-- Mappings
--
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "<p>roject <v>iew" })
vim.keymap.set({ "v", "n" }, "<leader>y", '"+y', { desc = "yank to clipboard" })

vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "<s>earch and replace all" }
)

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down keeping the cursor on the center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up keeping the cursor on the center" })

vim.keymap.set("n", "<leader>x", "<cmd>:bd<CR>", { desc = "close buffer" })

vim.keymap.set("n", "<C-t>", "<cmd>:TransparentToggle<CR>", { desc = "toggle transparency" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "<p>aste overwriting * not yanking" })

vim.keymap.set("n", "<leader>gd", "<cmd>:DiffviewOpen<CR>", { desc = "<g>it <d>iff view open" })

-- Move entire line down/up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- LSP attach event handler
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(mapping, func, description)
			vim.keymap.set("n", mapping, func, { buffer = event.buf, descp = description })
		end

		map("gd", require("telescope.builtin").lsp_definitions, "<g>oto <d>efinition")
		map("gr", require("telescope.builtin").lsp_references, "<g>oto <r>eferences")
		map("gI", require("telescope.builtin").lsp_implementations, "<g>oto <I>mplementations")
		map("D", require("telescope.builtin").lsp_type_definitions, "type <D>efinition")

		map("<leader>rn", vim.lsp.buf.rename, "<r>e<n>ame")
		map("<leader>ca", vim.lsp.buf.code_action, "<c>ode <a>ction")
		map("K", vim.lsp.buf.hover, "Hover Documentation")

		local client = vim.lsp.get_client_by_id(event.data.client_id)
		if client and client.server_capabilities.documentHighlightProvider then
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				callback = vim.lsp.buf.clear_references,
			})
		end
	end,
})
