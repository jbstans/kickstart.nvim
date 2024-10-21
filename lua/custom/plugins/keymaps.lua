return {
  vim.keymap.set('n', '<space>fb', ':Telescope file_browser<CR>'),
  -- open file_browser with the path of the current buffer
  vim.keymap.set('n', '<space>fb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>'),
  -- Alternatively, using lua API
  vim.keymap.set('n', '<space>fb', function()
    require('telescope').extensions.file_browser.file_browser()
  end),
  vim.keymap.set('n', '<space>ng', function()
    require('neogit').open()
  end),
  vim.keymap.set('n', '<space>x', ':bp <BAR> bd #<CR>'),
}
