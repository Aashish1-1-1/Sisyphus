-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("Aashish.settings")
--Importing asciiart
require("Aashish.asciidash")
--Lazy
require("Aashish.lazy")
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
--peachpuff	A soft and warm colorscheme(gay)
--quiet	A subdued and relaxing colorscheme
--ron	A balanced and harmonious colorscheme
--shine	A shiny and glossy colorscheme(--)
--slate	A colorscheme with shades of slate
--torte	A rich and chocolatey colorscheme(+)
--zellner	A unique and eye-catching colorscheme(--)
vim.cmd("colorscheme evening")
--vim.cmd("colorscheme tokyonight-night")
--vim.cmd([[colorscheme solarized-osaka]])
--Disabling swap file system
vim.cmd(":set noswapfile")
--Icons
require("Aashish.mappings")
