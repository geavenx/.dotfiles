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
        harpoon:list():append()
      end, '<h>arpoon <a>dd current buffer')
      map('<leader>1', function()
        harpoon:list():select(1)
      end)
      map('<leader>2', function()
        harpoon:list():select(2)
      end)
      map('<leader>3', function()
        harpoon:list():select(3)
      end)
      map('<leader>4', function()
        harpoon:list():select(4)
      end)
    end,
  },
}
