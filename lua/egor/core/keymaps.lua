vim.g.mapleader = " " -- all combinations start with leader key
local keymap = vim.keymap

-- General Keymaps --
keymap.set("i", "jk", "<ESC>") -- in insert mode hitting jk will be the same as ESC
keymap.set("n", "x", '"_x') -- x will not save deleted character

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>+", "<C-x>") -- increment numbers

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab

-- Plugin keymaps --
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize / restore window size
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>") -- toggle nvim-tree
