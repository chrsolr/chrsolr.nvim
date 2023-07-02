-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = false })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = false })
vim.keymap.set("n", "<C-j>", "}", { noremap = true, silent = false })
vim.keymap.set("n", "<C-k>", "{", { noremap = true, silent = false })
vim.keymap.set("v", "<C-j>", "}", { noremap = true, silent = false })
vim.keymap.set("v", "<C-k>", "{", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>cf", ":EslintFixAll<CR>", { noremap = true, silent = false, desc = "Format with ESLint" })
vim.keymap.set("n", "<leader>cF", vim.lsp.buf.format, { noremap = true, silent = false, desc = "Format Document" })