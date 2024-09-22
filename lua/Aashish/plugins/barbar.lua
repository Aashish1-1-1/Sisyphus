return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- For git status
      'nvim-tree/nvim-web-devicons', -- For file icons
      'nvim-lua/plenary.nvim', -- Gitsigns dependency
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- Additional options here
    },
    version = '^1.0.0',
  },
}

