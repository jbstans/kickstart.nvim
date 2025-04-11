return {
  vim.keymap.set('n', '<space>fb', ':lua Snacks.picker.files() <CR>'),
  vim.keymap.set('n', '<space>ng', function()
    require('neogit').open()
  end),
  vim.keymap.set('n', '<space>x', ':bp <BAR> bd #<CR>'),
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts),
}
