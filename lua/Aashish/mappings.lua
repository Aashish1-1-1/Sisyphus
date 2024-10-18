--Keymapping
local map = vim.keymap.set
local cwd = vim.fn.getcwd()
--For navigation
map("i", "<C-l>", "<Right>", { desc = "Move Right" })
map("i", "<C-j>", "<Down>", { desc = "Move Down" })
map("i", "<C-k>", "<Up>", { desc = "Move Up" })
map("i", "<C-b>", "<ESC>^i", { desc = "Move Beginning of line" })
map("i", "<C-h>", "<Left>", { desc = "Move Left" })
--For Tabchange
map("n", "<Tab>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
--Tree file
map("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", opts)
map("n", "<C-c>", "<Cmd>NvimTreeFocus<CR>", opts)
--Terminal toggle
map({ "n", "t" }, "<A-h>", "<Cmd>ToggleTerm size=10 direction=horizontal <CR>", opts)
map({ "n", "t" }, "<A-i>", "<Cmd>ToggleTerm size=5 direction=float <CR>", opts)

--Telescope
map({ "n", "i" }, "<C-s>", "<Cmd>Telescope find_files <CR>", opts)
map({ "n", "i" }, "<C-f>", "<Cmd>Telescope grep_string<CR>", opts)

--Selectl all
map({ "n", "i" }, "<C-a>", "ggVG")

--Comment the selected
map({ "x" }, "<C-_>", "I//<Esc><Esc>")
--Leetcode
map({ "n", "i" }, "<A-q>", "<Cmd>Leet run<CR>", opts)
map({ "n", "i" }, "<A-w>", "<Cmd>Leet submit<CR>", opts)
