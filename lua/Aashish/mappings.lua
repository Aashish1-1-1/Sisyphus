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
map("n","<Tab>",'<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map("n", "<C-n>", '<Cmd>Neotree toggle<CR>',opts)
map("n", "<C-c>", '<Cmd>Neotree focus<CR>',opts)
map("n", "<A-h>", '<Cmd>ToggleTerm size=5 <CR>',opts)
