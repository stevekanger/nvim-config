local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Random leader keymaps
keymap("n", "<leader>s", ":w<CR>", opts)
keymap("n", "<leader>a", ":wa<CR>", opts)
keymap("n", "<leader>q", ":bd | bnext<CR>", opts)
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", opts)
keymap("n", "<leader>n", "<cmd>set relativenumber!<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
--keymap("n", "<S-l>", ":bnext<CR>", opts)
--keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Remap a and i
keymap("n", "a", "i", opts)
keymap("n", "i", "a", opts)
keymap("n", "<S-i>", "<S-a>", opts)
keymap("n", "<S-a>", "<S-i>", opts)

-- remap half page up and down to center
vim.keymap.set("n", "<Up>", "<C-d>zz")
vim.keymap.set("n", "<Down>", "<C-u>zz")

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Telescope --
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>t", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})

-- Nvim Tree --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- LSP Saga --
keymap("n", "<leader>h", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Terminal ->
-- Esc to get back to normal mode
keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- Harpoon --
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>m", mark.add_file, {})
vim.keymap.set("n", "<leader>j", ui.toggle_quick_menu, {})
vim.keymap.set("n", "<S-l>", ui.nav_next, {})
vim.keymap.set("n", "<S-h>", ui.nav_prev, {})
