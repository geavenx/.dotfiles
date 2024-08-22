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
