-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--Importing plugins
require('plugins')

--Importing asciiart
require 'asciidash'

--Linenumber
--set relativenumber for relative
vim.cmd(":set relativenumber")

--Setting theme
--Colorscheme	Description
--blue	A colorscheme with shades of blue
--darkblue	A dark blue-themed colorscheme
--default	The default colorscheme
--delek	A colorscheme with a dark background and bold text
--desert	A desert-inspired colorscheme
--elflord	A fantasy-themed colorscheme
--evening	A colorscheme with a calming evening vibe
--habamax	A colorscheme with warm hues(++)
--industry	A colorscheme with an industrial look(++)
--koehler	A professional-looking colorscheme
--Lunaperche	A unique and visually pleasing colorscheme
--morning	A colorscheme that represents the morning
--murphy	A clean and minimalist colorscheme
--pablo	A vibrant colorscheme(++)
--peachpuff	A soft and warm colorscheme
--quiet	A subdued and relaxing colorscheme
--ron	A balanced and harmonious colorscheme
--shine	A shiny and glossy colorscheme(--)
--slate	A colorscheme with shades of slate
--torte	A rich and chocolatey colorscheme(+)
--zellner	A unique and eye-catching colorscheme(--)
vim.cmd("colorscheme habamax")
--vim.cmd("colorscheme tokyonight-night")
--vim.cmd[[colorscheme solarized-osaka]]
--Disabling swap file system
vim.cmd(":set noswapfile")

--Closingtheopening
require("autoclose").setup()

--SideBar fileexplorer
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = false,
  },
  filters = {
    dotfiles = true,
  },
})

--Status bar
-- Lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}

--cmp
local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
  },

  -- You should specify your *installed* sources.
  sources = {
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'ultisnips' },
  },
})
--Importing mappings
require 'mappings'

