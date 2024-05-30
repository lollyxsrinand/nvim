-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	--
	-- Telescope
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = { {'nvim-lua/plenary.nvim'}}}

	-- Theme
	use { "ellisonleao/gruvbox.nvim" }

	-- god save me
	use( 'nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')

	-- LSP 
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	-- Nerd tree
	use 'preservim/nerdtree'

	-- Lualine
	use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

	-- completion
	use {
		'https://github.com/hrsh7th/nvim-cmp',
		'https://github.com/hrsh7th/cmp-nvim-lsp',
		'https://github.com/L3MON4D3/LuaSnip',
		'https://github.com/saadparwaiz1/cmp_luasnip',
		'https://github.com/rafamadriz/friendly-snippets',
		"windwp/nvim-autopairs",
		"https://github.com/windwp/nvim-ts-autotag"
	}
end)

