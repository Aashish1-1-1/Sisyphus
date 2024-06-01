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
    indent_markers = {
      enable = true,
    },
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
--Split to below and right
vim.cmd(":set splitright")
vim.cmd(":set splitbelow")

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
--Closingtheopening
require('autoclose').setup()

--Icons
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
 -- same as `override` but specifically for operating system
 -- takes effect when `strict` is true
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}
--Importing mappings
require 'mappings'

