return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  require('telescope').setup {
    extensions = {
      file_browser = {
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        hidden = { file_browser = true, folder_browser = true },
      },
    },
  },
}
