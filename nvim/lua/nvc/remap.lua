vim.g.mapleader = "\t"
--vim.keymap.set("n", "<leader><Enter>", vim.cmd.Oil)
vim.keymap.set("n", "<Backspace>", vim.cmd.Oil)

-- Move block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append below line to the back of current
vim.keymap.set("n", "J", "mzJ`z")

-- Half-page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Stay in center when jumping between search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste repeatedly
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Previous/next buffer
vim.keymap.set("n", "<leader>bn", "bn")
vim.keymap.set("n", "<leader>bp", "bp")

-- Yank to clipboard
vim.keymap.set("v", "Y", "+y")
