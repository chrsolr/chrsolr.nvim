---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center", opts = { nowait = true } },
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
  },

  v = {
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
  }
}

-- more keybinds!

return M
