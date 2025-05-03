return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
    event = 'BufEnter',
    config = function()
      local map = function(key, func, desc)
        vim.keymap.set('n', key, func, { desc = desc })
      end

      local harpoon = require 'harpoon'
      harpoon:setup()
      map('<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, 'Open harpoon window')
      map('<leader>ha', function()
        harpoon:list():add()
      end, '<h>arpoon <a>dd current buffer')
      map('<leader>h1', function()
        harpoon:list():select(1)
      end)
      map('<leader>h2', function()
        harpoon:list():select(2)
      end)
    end,
  },
}
