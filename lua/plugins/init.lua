-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use {'nvim-treesitter/nvim-treesitter',run =":TSUpdate"}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  }
}
use {
    'windwp/nvim-ts-autotag'
}
use {  'p00f/nvim-ts-rainbow'}
use {  'windwp/nvim-autopairs'}
use {  'folke/which-key.nvim'}
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use  'onsails/lspkind.nvim'

use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate", -- :MasonUpdate updates registry contents
   "williamboman/mason-lspconfig.nvim",
}

use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup{current_line_blame = true,}
  end
}

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use({ 'rose-pine/neovim', as = 'rose-pine' ,config = "vim.cmd('colorscheme rose-pine')"})
use { 'kkharji/lspsaga.nvim', branch = 'nvim6.0' or 'nvim51' } -- for specific version
use 'terrortylor/nvim-comment'
use 'tpope/vim-fugitive'
end)
