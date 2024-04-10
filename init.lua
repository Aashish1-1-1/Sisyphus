-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--Importing plugins
require('plugins')


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
--habamax	A colorscheme with warm hues
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
vim.cmd("colorscheme industry")
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
-- Function to print ASCII art as custom dashboard header
local function custom_header()
    local header = {

        "                                         _____ _                 _                                 ",    
        "                                        / ____(_)               | |                                ",
        "                                       | (___  _ ___ _   _ _ __ | |__  _   _ ___                   ",
        "                                        ___  \\| / __| | | | '_ \\| '_ \\| | | / __|                ",
        "                                        ____) | __\\ |_| | |_) | | | | |_| \\__ \\                  ",
        "                                       |_____/|_|___/__, | .__/|_| |_|\\__,_|___/                  ",
        "                                                      __/ | |                                      ",
        "                                                     |___/|_|                                       ", 	   "                                                                                                    ",
        "                                                      █    _  ",
        "                                                       █  /_\\  ",
        "                                                        █ \\_/     ",
        "                                                         █  \\\\0   ",
        "                                                          █   |    ",
        "                                                           █ / |   ",
        "                                                            █      ",
        "                                                             █     ",
        "                                                              █    ",
        "                                                               █   ",
        "                                                                █  ",
        "                                                                 █ ",
        "                                                         Keep rolling...",
        "                                                                          ",
        "                                                                          ",
        "                                🔨Enter     🪬C-n for sidebar      ⟺ Tab to change tabs  ",
        "                                                                   ",
        "                                                                   ",
        "                                                                   ",
        "                                                                   ",
        "                                                                   ",
    }
    for _, line in ipairs(header) do
     print(line)
  end
end

-- Set custom header function for dashboard
vim.g.dashboard_custom_header = custom_header()
--Keymapping
local map = vim.keymap.set
--For navigation
map("i", "<C-l>", "<Right>", { desc = "Move Right" })
map("i", "<C-j>", "<Down>", { desc = "Move Down" })
map("i", "<C-k>", "<Up>", { desc = "Move Up" })
map("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
--For Tabchange
map("n","<Tab>",'<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map("n", "<C-n>", '<Cmd>NvimTreeOpen<CR>',opts)
map("n", "<C-c>", '<Cmd>NvimTreeClose<CR>',opts)
