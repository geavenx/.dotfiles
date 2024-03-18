return {
  { 'mfussenegger/nvim-dap' },

  {
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = { 'williamboman/mason.nvim', 'mfussenegger/nvim-dap' },
    event = 'VeryLazy',

    config = function()
      require('mason').setup()
      require('mason-nvim-dap').setup {
        ensure_installed = {
          'codelldb',
          'delve',
        },
        automatic_installation = false,
        handlers = {},
      }
    end,
  },

  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    event = 'VeryLazy',
    config = function()
      local dapui = require 'dapui'
      local dap = require 'dap'

      local debuggers = {
        {
          name = 'codelldb',
          type = 'codelldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          args = function()
            local useArgs = vim.fn.input 'Use arguments? (y/N): '
            if useArgs == 'y' or useArgs == 'Y' then
              local arguments = vim.fn.input('Program arguments: ', vim.fn.getcwd() .. '/', 'file')
              return vim.fn.split(arguments, ' ', true)
            end
          end,
          stopOnEntry = false,
        },
      }

      dapui.setup()
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.fn.sign_define('DapBreakpoint', { text = '➜', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapStopped', { text = '▶️', texthl = '', linehl = '', numhl = '' })

      dap.adapters.codelldb = {
        type = 'server',
        port = '13000',
        executable = {
          command = '/usr/bin/codelldb',
          args = { '--port', '13000' },
        },
      }
      dap.configurations.cpp = {
        debuggers.codelldb,
      }
    end,
  },

  { 'leoluz/nvim-dap-go', opts = {} },
}
