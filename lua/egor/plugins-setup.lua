local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  -- Pretty
  'folke/tokyonight.nvim',
  "rebelot/kanagawa.nvim",
  'savq/melange-nvim',
  'sainnhe/everforest',
  'ellisonleao/gruvbox.nvim',
  'maxmx03/solarized.nvim',
  'goolord/alpha-nvim', -- startup page
  'kyazdani42/nvim-web-devicons',-- vscode-like icons
  'xiyaowong/nvim-transparent',
  'nvim-lualine/lualine.nvim',

  'christoomey/vim-tmux-navigator',-- tmux window navigation
  'szw/vim-maximizer',
  'numToStr/Comment.nvim',
  'nvim-lua/plenary.nvim',-- lua functions tha useins may use
  'nvim-tree/nvim-tree.lua',-- file explorer

  -- Telescope
  { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim',
   build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

   'nvim-treesitter/nvim-treesitter',
   'mfussenegger/nvim-dap', -- debug

  -- LSP --
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip', -- snippet engine
  'saadparwaiz1/cmp_luasnip', -- for autocompletion
  'rafamadriz/friendly-snippets',  -- useful snippets
  'williamboman/mason.nvim',

--  "m4xshen/hardtime.nvim" -- erradicate bad habbits
-- -- use {'neoclide/coc.nvim', branch = 'release'}

  -- Auto closing
  'windwp/nvim-autopairs', -- autoclose parens, brackets, quotes, etc...
  'windwp/nvim-ts-autotag', -- autoclose tags
--  -- git integration
  'lewis6991/gitsigns.nvim', -- show line modifications on left hand side
--  'jbyuki/instant.nvim'
})
