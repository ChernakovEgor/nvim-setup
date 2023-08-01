local opt = vim.opt -- global variable

-- Line numbers --
opt.relativenumber = true
opt.number = true -- setting both number and relative number to true makes hybrid number

-- Tabs & Indentation --
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line wrapping --
opt.wrap = false

-- Search settings --
opt.ignorecase = true
opt.smartcase = true

-- Cursor line --
opt.cursorline = true

-- Appearence --
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace --
opt.backspace = "indent,eol,start"

-- Clipboard --
opt.clipboard:append("unnamedplus")  -- paste from systerm clipboard

-- Split Windows --
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- makes dash part of a word
