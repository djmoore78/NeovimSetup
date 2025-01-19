vim.g.mapleader = " "

-- VIM Options
local opt = vim.opt

-- Set tabwidth to 2 and replace tabs with spaces
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true

-- show current line number and relative numbers
opt.relativenumber = true
opt.number = true

opt.swapfile = false

opt.splitright = true
opt.splitbelow = true

opt.termguicolors = true

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) 
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) 
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
