vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	---Autoclose
	use 'm4xshen/autoclose.nvim'
	--TabBar
	use 'nvim-tree/nvim-web-devicons' 
	use 'lewis6991/gitsigns.nvim' 
	use 'romgrk/barbar.nvim'
	--SideBar fileExplorer
	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons',
	  },
	}


	---BetterTheme
	use 'folke/tokyonight.nvim'
	use 'rainglow/vim'
	use 'craftzdog/solarized-osaka.nvim'
	--StatusBar
	use {
         'nvim-lualine/lualine.nvim',
         requires = { 'nvim-tree/nvim-web-devicons', opt = true }
       }
end)
