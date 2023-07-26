return {
  'ojroques/nvim-bufdel',
  enabled = false,
  config = function()
    require('bufdel').setup {
      quit = false
    }
  end
}
