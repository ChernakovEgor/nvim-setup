-- Install packages on a new machine --
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end


-- Reloads neovim after saving this file --
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'
  -- use 'nyngwang/nvimgelion'

  use 'christoomey/vim-tmux-navigator' -- tmux window navigation
  use 'szw/vim-maximizer'
  use 'numToStr/Comment.nvim'
  use 'nvim-lua/plenary.nvim' -- lua functions tha useins may use
  use 'nvim-tree/nvim-tree.lua' -- file explorer
  use 'kyazdani42/nvim-web-devicons' -- vscode-like icons
  use 'xiyaowong/nvim-transparent'
  use 'nvim-lualine/lualine.nvim'
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"})
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x"})
  
  use 'goolord/alpha-nvim' -- startup page

  -- Autocompletion --
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets
 -- use {'neoclide/coc.nvim', branch = 'release'}

  -- Treesitter --
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- Auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all useins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
