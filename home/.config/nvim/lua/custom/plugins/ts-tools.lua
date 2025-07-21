return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      tsserver_file_options = {
        allowRenameOfImportPath = true,

        includeCompletionsForImportStatements = true,
        includeCompletionsForModuleExports = true,
        includeCompletionsWithSnippetText = true,

        jsxAttributeCompletionStyle = 'auto',

        organizeImportsIgnoreCase = 'auto',

        quotePreference = 'auto',
      },

      tsserver_format_options = {
        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true, -- Space before/after closing/opening braces "{}"
        insertSpaceBeforeTypeAnnotation = true,
        insertSpaceBeforeAndAfterBinaryOperators = true,
      },

      jsx_close_tag = {
        enable = true,
        filetypes = { 'javascriptreact', 'typescriptreact' },
      },
    },
  },
}
