-- NOTE: For more options, you can see `:help option-list`

vim.o.nu = true -- Show current line number (`false` make it always "0")
vim.o.relativenumber = true -- Make line numbers relative to the cursor position
vim.o.mouse = 'a' -- Enable mouse mode, it is useful for resizing splits
vim.o.showmode = false -- Don't show current mode, since it is already in the status bar
vim.o.breakindent = true -- Enable break indent

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus' -- Sync clipboard between OS and Neovim
end)

vim.o.undofile = true -- Save undo history

vim.o.ignorecase = true -- Case-insensitive searching,
vim.o.smartcase = true -- Unless \C or one or more Capital letters in the search

vim.o.signcolumn = 'yes' -- Keep signcolumn on by default

vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time

vim.o.splitright = true -- Configure how new splits should be opened
vim.o.splitbelow = true -- ...

vim.o.inccommand = 'split' -- Preview substitutions live, as you type

vim.o.list = true --     Sets how neovim will display
vim.opt.listchars = { -- certain whitespace characters in the editor.
  tab = '» ',
  trail = '·',
  nbsp = '␣',
}

vim.o.cursorline = true -- Show which line your cursor is on
vim.o.scrolloff = 10 -- Minimal n of screen lines to keep above and below the cursor
vim.o.confirm = true -- Raise dialig asking to save the file when fail operation e.g. (:q)
