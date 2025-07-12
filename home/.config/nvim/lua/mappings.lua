-- leader PeeVee
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '<p>roject <v>iew' }) -- See vim Explorer (:Explore)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search (/) when pressing <Esc> on normal mode
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' }) -- Diagnostic keymap

-- Split navigation {{
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- }}

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '<s>earch and replace all' }) -- Search and replace word's all ocurrencies

-- Keep cursor centered when scrolling {{
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'scroll down keeping the cursor on the center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'scroll up keeping the cursor on the center' })
-- }}

vim.keymap.set('n', '<C-t>', '<cmd>:TransparentToggle<CR>', { desc = 'toggle transparency' }) -- Toggle background transparency
