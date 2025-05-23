--- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "-", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>ff", telescope.find_files)    -- Lists files in your current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fx", telescope.treesitter)    -- Lists tree-sitter symbols
vim.keymap.set("n", "<leader>fs", telescope.spell_suggest) -- Lists spell options

--- Barbar
vim.keymap.set("n", "<A-,>", "<cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<A-.>", "<cmd>BufferNext<CR>")
vim.keymap.set("n", "<A-<>", "<cmd>BufferMovePrevious<CR>")
vim.keymap.set("n", "<A->>", "<cmd>BufferMoveNext<CR>")
vim.keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<CR>")
vim.keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<CR>")
vim.keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<CR>")
vim.keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<CR>")
vim.keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<CR>")
vim.keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<CR>")
vim.keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<CR>")
vim.keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<CR>")
vim.keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<CR>")
vim.keymap.set("n", "<A-0>", "<cmd>BufferLast<CR>")
vim.keymap.set("n", "<A-p>", "<cmd>BufferPin<CR>")
vim.keymap.set("n", "<A-q>", "<cmd>BufferClose<CR>")
vim.keymap.set("n", "<A-w>", "<cmd>BufferCloseAllButCurrent<CR>")

--- ray-x/go
local go_format = require("go.format")

--- vim.keymap.set("n", "<A-r>", "<cmd>GoRun % -a -l\\ -c\\ /home/piorus/code/coding-challenges-in-go/cmd/001-wc/test.txt<CR>")
vim.keymap.set("n", "<C-f>", go_format.goimports)

--- notion
--- local notion = require("notion")
--- vim.keymap.set("n", "<leader>no", function() notion.openMenu() end)
