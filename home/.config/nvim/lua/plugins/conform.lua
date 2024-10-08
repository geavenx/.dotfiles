return {
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        typescriptreact = { 'prettierd' },
        javascriptreact = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        scss = { 'prettierd' },
        json = { 'prettierd' },
        yaml = { 'prettierd' },
        yml = { 'prettierd' },
        toml = { 'prettierd' },
        rust = { 'rustfmt' },
        go = { 'gofmt' },
      },
      format_on_save = {
        lsp_fallback = true,
      },

      vim.keymap.set('n', '<leader>f', function()
        require('conform').format {
          lsp_fallback = true,
        }
      end, { desc = '<f>ormat file' }),
    },
  },
}
