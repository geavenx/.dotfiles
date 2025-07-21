return {
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'black' },
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        javascriptreact = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        yml = { 'prettier' },
        toml = { 'prettier' },
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
