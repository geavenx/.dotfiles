require("telescope").setup({
	extensions = {
		["ui-select"] = {
			require("telescope.themes").get_dropdown(),
		},
	},
})

-- Enable telescope extensions, if they are installed
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "ui-select")

local builtin = require("telescope.builtin")
local map = function(binding, func, desc)
	vim.keymap.set("n", binding, func, { desc = desc })
end

map("<leader>pf", builtin.find_files, "<p>roject <f>ind")
map("<leader>ps", builtin.live_grep, "<p>roject <s>earch")
map("<leader><leader>", builtin.buffers, "Existing buffers")
