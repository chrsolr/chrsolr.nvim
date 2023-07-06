--@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center", opts = { nowait = true } },
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
    ["<S-h>"] = { "<C-w>h", "Window left" },
    ["<S-l>"] = { "<C-w>l", "Window right" },
    ["<S-j>"] = { "<C-w>j", "Window down" },
    ["<S-k>"] = { "<C-w>k", "Window up" },
    ["<leader>|"] = { "<cmd> vsp <CR>", "Vertical Split", opts = { nowait = true } },
    ["<leader>-"] = { "<cmd> sp <CR>", "Horizantal Split", olpts = { nowait = true } },
  },

  v = {
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
  },

  i = {
    ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
  }
}

-- more keybinds!

return M
