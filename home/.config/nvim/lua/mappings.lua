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

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
