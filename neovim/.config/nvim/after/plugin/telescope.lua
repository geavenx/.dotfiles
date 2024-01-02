local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '<p>roject <f>ind' }) -- pf -> Project Find
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() --  ps -> Project Search
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = "<p>roject <s>earch" })
