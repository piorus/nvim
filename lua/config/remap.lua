local opts = {noremap = true, silent = true}

vim.g.mapleader = "<Space>"

--- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "-", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>ff", telescope.find_files, opts) -- Lists files in your current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fx", telescope.treesitter, opts) -- Lists tree-sitter symbols
vim.keymap.set("n", "<leader>fs", telescope.spell_suggest, opts) -- Lists spell options

--- Barbar
vim.api.nvim_set_keymap("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>0", "<Cmd>BufferLast<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-q>", "<Cmd>BufferClose<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-w>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)
