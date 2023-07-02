return {
  'neovim/nvim-lspconfig',
  init = function()
    local keys = require('lazyvim.plugins.lsp.keymaps').get()
    -- change a keymap
    -- keys[#keys + 1] = { "<leader>cf", "<leader>cF" }
    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { '<leader>cf', false }
    -- add a keymap
    -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
  end,
}
