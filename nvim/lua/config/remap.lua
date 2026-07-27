-- Leader key
vim.g.mapleader = " "

-- Go to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

-- Move with identation correct
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
