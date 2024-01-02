local fterm = require("FTerm")

vim.keymap.set("n", "<leader>tt", function()
	fterm.open()
end, { desc = "<t>erminal <t>oggle" })

vim.keymap.set("n", "<leader>tc", function()
	fterm.close()
end, { desc = "<t>erminal <c>lose" })
