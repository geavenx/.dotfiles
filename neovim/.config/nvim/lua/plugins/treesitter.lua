return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      ensure_installed = {
        'go',
        'lua',
        'query',
        'bash',
        'rust',
        'vim',
        'vimdoc',
        'python',
        'typescript',
        'javascript',
        'html',
        'c',
        'cpp',
        'markdown',
        'markdown_inline',
        'rego',
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    },

    config = function(_, opts)
      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
