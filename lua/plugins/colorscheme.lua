return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

  {
    'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000,
    opts = { style = 'storm' },
  },

  { 'LazyVim/LazyVim', opts = { colorscheme = 'catppuccin-mocha' } },
}
