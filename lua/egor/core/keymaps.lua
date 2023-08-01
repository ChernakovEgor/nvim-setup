vim.g.mapleader = " " -- all combinations start with leader key
local keymap = vim.keymap

-- General Keymaps --
keymap.set("i", "jk", "<ESC>") -- in insert mode hitting jk will be the same as ESC
keymap.set("n", "x", '"_x') -- x will not save deleted character
keymap.set("n", "<Enter>", "o<ESC>")
keymap.set("n", "<S-Enter>", "O<ESC>")
keymap.set("x", "<leader>p", "\"_dP")

keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>") -- increment numbers

keymap.set("n", "<leader>s|", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>s-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>tc", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab

-- Plugin keymaps --
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize / restore window size
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle nvim-tree


-- Telescope --
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- Telescope git commands --
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]
