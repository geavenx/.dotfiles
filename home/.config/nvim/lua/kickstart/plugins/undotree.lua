return {
  'mbbill/undotree',
  cmd = 'UndotreeToggle',
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_SplitWidth = 40
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
