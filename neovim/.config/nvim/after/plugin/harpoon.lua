local harpoon = require("harpoon")

harpoon:setup({})

local conf = require("telescope.config").values

local function toggle_telescope(harpoon_files)
	local file_paths = {}
	for _, item in ipairs(harpoon_files.items) do
		table.insert(file_paths, item.value)
	end

	require("telescope.pickers")
		.new({}, {
			prompt_title = "Harpoon",
			finder = require("telescope.finders").new_table({
				results = file_paths,
			}),
			previewer = conf.file_previewer({}),
			sorter = conf.generic_sorter({}),
		})
		:find()
end

vim.keymap.set("n", "<C-e>", function()
	toggle_telescope(harpoon:list())
end, { desc = "Open Harpoon window" })
vim.keymap.set("n", "<leader>ha", function()
	harpoon:list():append()
end, { desc = "<h>arpoon <a>dd buffer to list" })

vim.keymap.set("n", "<leader>1", function()
	harpoon:list():select(1)
end, { desc = "Go to item 1 of the list" })
vim.keymap.set("n", "<leader>2", function()
	harpoon:list():select(2)
end, { desc = "Go to item 2 of the list" })
vim.keymap.set("n", "<leader>3", function()
	harpoon:list():select(3)
end, { desc = "Go to item 3 of the list" })
vim.keymap.set("n", "<leader>4", function()
	harpoon:list():select(4)
end, { desc = "Go to item 4 of the list" })
