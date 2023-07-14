--@type MappingsTable
local M = {}

M.general = {
  n = {
    -- Motions
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center", opts = { nowait = true } },
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },


    -- Windows
    ["<leader>|"] = { "<cmd> vsp <CR>", "Vertical Split", opts = { nowait = true } },
    ["<leader>-"] = { "<cmd> sp <CR>", "Horizantal Split", opts = { nowait = true } },


    -- Commands
    ["<leader>ct"] = { "<cmd> TroubleToggle <CR>", "Trouble Toggle", opts = { nowait = true} },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open LazyGit", opts = { nowait = true} },


    -- Formats
    ["<leader>cf"] = {
      function()
        vim.lsp.buf.format { async = true }
        vim.cmd("EslintFixAll")
      end,
      "LSP & Eslint formatting",
    },


    -- Spell
    ["<leader>zg"] = { "zg", "Add word to dictionary", opts = { nowait = true } },
    ["<leader>z-"] = {
      function()
        vim.opt_local.spell = not(vim.opt_local.spell:get())
        print("spell: " .. tostring(vim.o.spell))
      end,
      "Toggle spell check"
    },
  },

  v = {
    ["<C-j>"] = { "}", "Scroll down to next blankline ", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline ", opts = { nowait = true } },

    ["p"] = { '"_dP', opts = { nowait = true } },
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
