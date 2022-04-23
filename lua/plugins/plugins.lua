-- -- PLUGINS 

local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
use 'wbthomason/packer.nvim'

-- -- Vim git
use 'tpope/vim-fugitive'
use 'lewis6991/gitsigns.nvim'

-- -- Comments
-- use 'tpope/vim-commentary'

-- -- File finder
use 'nvim-telescope/telescope.nvim'

-- -- File manager
use 'kyazdani42/nvim-web-devicons'

-- -- File icons
use 'kyazdani42/nvim-tree.lua'

-- -- LSP - Lua
-- use {
--   "neovim/nvim-lspconfig",
--   event = "BufReadPre",
--   requires = {
--     "williamboman/nvim-lsp-installer",
--     "ray-x/lsp_signature.nvim",
--   },
-- }
use 'neovim/nvim-lspconfig'
use 'nvim-lua/plenary.nvim'
use 'nvim-lua/popup.nvim'
use 'williamboman/nvim-lsp-installer'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use { 'hrsh7th/nvim-cmp', disable = false }
use 'nvim-lualine/lualine.nvim'
use 'folke/lsp-colors.nvim'
use 'L3MON4D3/LuaSnip'
-- use 'onsails/lspkind-nvim'
use 'ray-x/lsp_signature.nvim'

use 'mg979/vim-visual-multi'

-- --  Acelerar carga de modulos
-- use 'lewis6991/impatient.nvim'
use 'preservim/tagbar'
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
-- -- Treesitter
use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }

-- -- Refactor
use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
}
-- Theme
use 'joshdick/onedark.vim'
use 'glepnir/dashboard-nvim'
use 'rose-pine/neovim'
use 'lifepillar/vim-gruvbox8'

-- -- Autocomplete
use 'jiangmiao/auto-pairs'
use 'alvan/vim-closetag'
use 'terryma/vim-multiple-cursors'

-- Terminal
use 'akinsho/toggleterm.nvim'

-- Format code
-- use {'prettier/vim-prettier', run='yarn install'}
-- use {'ray-x/guihua.lua', run ='cd lua/fzy && make'}
-- use {'ray-x/navigator.lua'}
-- Debugger
-- use 'mfussenegger/nvim-dap'
-- use 'glepnir/lspsaga.nvim'

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)

