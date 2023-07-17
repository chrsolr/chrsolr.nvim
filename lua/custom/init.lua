-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- 
local opt = vim.opt

-- Numbers
opt.relativenumber = true

-- 
vim.wo.wrap = false
vim.wo.linebreak = true
vim.wo.list = false