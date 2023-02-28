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
    -- use 'lewis6991/gitsigns.nvim'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'kdheepak/lazygit.nvim' }

    -- -- Comments and movements
    use 'tpope/vim-commentary'
    use 'fedepujol/move.nvim'
    use 'anuvyklack/hydra.nvim'

    -- -- File finder
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- -- File manager
    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    -- -- Colorschemes and themes
    use 'sainnhe/everforest'
    use 'rose-pine/neovim'
    use 'joshdick/onedark.vim'
    -- use 'lifepillar/vim-gruvbox8'
    --
    --

    use({
      "folke/noice.nvim",
      config = function()
        require("noice").setup({
        })
      end,
      requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
        }
    })




    -- use 'glepnir/dashboard-nvim'
    -- use 'jose-elias-alvarez/null-ls.nvim'

    -- -- LSP - Lua
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
    use 'ray-x/lsp_signature.nvim'
    use {
        "glepnir/lspsaga.nvim",
        branch = "main",
    }
    -- -- Package manager
    -- mason.nvim

    -- Multiples cursores
    use 'mg979/vim-visual-multi'

    -- --  Acelerar carga de modulos
    use 'lewis6991/impatient.nvim'
    use 'nathom/filetype.nvim'

    use 'preservim/tagbar'

    -- -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
    use 'romgrk/nvim-treesitter-context'


    -- -- Refactoring
    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }



    -- -- Autocomplete
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end

end)
