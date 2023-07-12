--@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center", opts = { nowait = true } },

    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
    
    ["<leader>|"] = { "<cmd> vsp <CR>", "Vertical Split", opts = { nowait = true } },
    ["<leader>-"] = { "<cmd> sp <CR>", "Horizantal Split", opts = { nowait = true } },

    ["<leader>ct"] = { "<cmd> TroubleToggle <CR>", "Trouble Toggle", opts = { nowait = true} },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open LazyGit", opts = { nowait = true} },

    ["<leader>cf"] = {
      function()
        vim.lsp.buf.format { async = true }
        vim.cmd("EslintFixAll")
      end,
      "LSP & Eslint formatting",
    },
  },

  v = {
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },
  },

  i = {
    ["<C-s>"] = { "<ESC><cmd> w <CR>", "Save file" },
  }
}

M.telescope = {
  n = {
    ["<leader>fr"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
  }
}
-- more keybinds!

return M
