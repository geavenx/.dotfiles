return {
  {
    'xiyaowong/transparent.nvim',
    config = function()
      vim.keymap.set('n', '<C-t>', '<cmd>:TransparentToggle<CR>', { desc = 'toggle transparency' })
    end,
  },
}
