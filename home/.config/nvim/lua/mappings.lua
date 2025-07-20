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

-- Keep cursor centered when scrolling {{
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'scroll down keeping the cursor on the center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'scroll up keeping the cursor on the center' })
-- }}

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '<s>earch and replace all' }) -- Search and replace word's all ocurrencies
vim.keymap.set('x', '<leader>s', function() -- Same thing as the above, but only inside a visual line selection
  local word = vim.fn.expand '<cword>'
  local escaped_word = vim.fn.escape(word, '/\\.*[]^$')
  local keymap = vim.api.nvim_replace_termcodes(':s/' .. escaped_word .. '/' .. escaped_word .. '/gI<Left><Left><Left>', true, false, true)
  vim.api.nvim_feedkeys(keymap, 'n', false)
end, { desc = '<s>earch and replace word under cursor in visual line mode' })

vim.keymap.set('n', '<leader><leader>', ':so<CR>')

vim.keymap.set('n', '<leader>gj', [[$a`json:""`<Left><Left>]], { desc = 'append json tag to the end of struct' })
vim.keymap.set('n', '<leader>gx', [[$a`xml:""`<Left><Left>]], { desc = 'append xml tag to the end of struct' })
