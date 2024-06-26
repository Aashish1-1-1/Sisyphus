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
map("n", "<A-h>",  '<Cmd>split | term<CR>',opts)
map("n", "<A-v>",  '<Cmd>vsplit | term<CR>',opts)
map("t", "<A-c>",  '<Cmd>bdelete!<CR>',opts)
map("n", "<A-c>",  '<Cmd>bdelete!<CR>',opts)
