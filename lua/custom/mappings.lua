--@type MappingsTable
local M = {}

M.general = {
  n = {


    -- Motions
    ["<C-d>"] = { "<C-d>zz", "Scroll down and center", opts = { nowait = true } },
    ["<C-u>"] = { "<C-u>zz", "Scroll up and center", opts = { nowait = true } },
    ["<C-j>"] = { "}", "Scroll down to next blankline", opts = { nowait = true } },
    ["<C-k>"] = { "{", "Scroll up to next blankline", opts = { nowait = true } },
    ["<S-h>"] = { "<cmd> bprevious <CR>", "Previous buffer", opts = { nowait = true } },
    ["<S-l>"] = { "<cmd> bnext <CR>", "Next buffer", opts = { nowait = true } },

    ["<leader>h"] = { "<C-w>h", "Move to left pane", opts = { nowait = true } },
    ["<leader>j"] = { "<C-w>j", "Move to below pane", opts = { nowait = true } },
    ["<leader>k"] = { "<C-w>k", "Move to top pane", opts = { nowait = true } },
    ["<leader>l"] = { "<C-w>l", "Move to right pane", opts = { nowait = true } },
    ["<leader>q"] = { "<C-w>q", "Close pane", opts = { nowait = true } },


    -- Windows
    ["<leader>v"] = { "<cmd> vsp <CR>", "Vertical Split", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd> sp <CR>", "Horizantal Split", opts = { nowait = true } },


    -- Commands
    ["<leader>ct"] = { "<cmd> TroubleToggle <CR>", "Trouble Toggle", opts = { nowait = true} },
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open LazyGit", opts = { nowait = true} },


    -- Formats
    ["<leader>cf"] = {
      function()
        vim.cmd("EslintFixAll")
      end,
      "LSP & Eslint formatting",
    },


    -- Spell
    ["<leader>zg"] = { "zg", "Add word to dictionary", opts = { nowait = true } },
    ["<leader>zT"] = {
      function()
        vim.opt_local.spell = not(vim.opt_local.spell:get())
        print("spell local: " .. tostring(vim.o.spell))
      end,
      "Toggle spell check (Local)"
    },
    ["<leader>zt"] = {
      function()
        vim.opt.spell = not(vim.opt.spell:get())
        print("spell global: " .. tostring(vim.o.spell))
      end,
      "Toggle spell check (Global)"
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
    ["<leader>kt"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
  }
}
-- more keybinds!


M.nvterm = {
  plugin = true,

  t = {
    -- toggle in terminal mode
    ["<A-i>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },

    ["<A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },

    ["<A-v>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "Toggle vertical term",
    },
  },

  n = {
    ["<leader>th"] = {
      function()
        require("nvterm.terminal").new "horizontal"
      end,
      "New horizontal term",
    },

    ["<leader>tv"] = {
      function()
        require("nvterm.terminal").new "vertical"
      end,
      "New vertical term",
    },
  },
}

return M
