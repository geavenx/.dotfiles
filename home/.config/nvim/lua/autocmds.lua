-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- LSP attach event handler
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
  callback = function(event)
    local map = function(mapping, func, description)
      vim.keymap.set('n', mapping, func, { buffer = event.buf, descp = description })
    end

    map('gd', require('telescope.builtin').lsp_definitions, '<g>oto <d>efinition')
    map('gr', require('telescope.builtin').lsp_references, '<g>oto <r>eferences')
    map('gI', require('telescope.builtin').lsp_implementations, '<g>oto <I>mplementations')
    map('D', require('telescope.builtin').lsp_type_definitions, 'type <D>efinition')

    map('<leader>rn', vim.lsp.buf.rename, '<r>e<n>ame')
    map('<leader>ca', vim.lsp.buf.code_action, '<c>ode <a>ction')
    map('K', vim.lsp.buf.hover, 'Hover Documentation')

    local client = vim.lsp.get_client_by_id(event.data.client_id)
    if client and client.server_capabilities.documentHighlightProvider then
      vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.document_highlight,
      })

      vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
        buffer = event.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end
  end,
})
