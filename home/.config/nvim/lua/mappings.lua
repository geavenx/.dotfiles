-- Mappings
--
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '<p>roject <v>iew' })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '<s>earch and replace all' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'scroll down keeping the cursor on the center' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'scroll up keeping the cursor on the center' })

vim.keymap.set('n', '<leader>x', '<cmd>:bd<CR>', { desc = 'close buffer' })

vim.keymap.set('n', '<C-t>', '<cmd>:TransparentToggle<CR>', { desc = 'toggle transparency' })

vim.keymap.set('x', '<leader>p', [["_dP]], { desc = '<p>aste overwriting *, not yanking' })

-- Move entire line down/up
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")

vim.keymap.set('n', '<leader>gg', '<cmd> :LazyGit <CR>', { desc = 'Open lazy<g>it' })

vim.keymap.set('n', '<leader>dr', "<cmd> :lua require('dap').continue() <CR>", { desc = '<d>ebugger <r>un' })
vim.keymap.set('n', '<leader>db', "<cmd> :lua require('dap').toggle_breakpoint() <CR>", { desc = '<d>ebugger <b>reakpoint' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
