vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--TabBar
	use 'nvim-tree/nvim-web-devicons' 
	use 'lewis6991/gitsigns.nvim' 
	use 'romgrk/barbar.nvim'

	---Autoclose
	use 'm4xshen/autoclose.nvim'
	---BetterTheme
	use 'folke/tokyonight.nvim'
	use 'rainglow/vim'
	use 'craftzdog/solarized-osaka.nvim'
	--StatusBar
	use {
         'nvim-lualine/lualine.nvim',
         requires = { 'nvim-tree/nvim-web-devicons', opt = true }
       }
	--SideBar fileExplorer
	use {
	  'nvim-tree/nvim-tree.lua',
	}
       --Autocomplete
   	 use {
   	     "hrsh7th/nvim-cmp",
   	     requires = {
   	         "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp", 'hrsh7th/cmp-vsnip',
   	         'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
   	         'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
   	         'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
   	     }
   	 }
   	 use {
   	     'tzachar/cmp-tabnine',
   	     run = './install.sh',
   	     requires = 'hrsh7th/nvim-cmp'
   	 }	

end)
