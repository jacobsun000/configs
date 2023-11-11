-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local unmap = vim.keymap.del
local map = Util.safe_keymap_set
-------- Leader Key  --------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------- Colemak --------
unmap("v", "j")
map({ "n", "v" }, "k", "i")
map({ "n", "v" }, "K", "I")
map({ "n", "v" }, "l", "u")
map({ "n", "v" }, "L", "U")
map({ "n", "v" }, "h", "e")
map({ "n", "v" }, "H", "E")
map({ "n", "v" }, "n", "h")
map({ "n", "v" }, "N", "H")
map({ "n", "v" }, "e", "j")
map({ "n", "v" }, "E", "J")
map({ "n", "v" }, "u", "k")
map({ "n", "v" }, "U", "K")
map({ "n", "v" }, "I", "L")
map({ "n" }, "i", "l")
map({ "n" }, "j", "n")
map({ "n" }, "J", "N")

-------- General --------
map({ "i", "v" }, "jj", "<Esc>", { desc = "Quick exit to normal mode" })
map({ "i", "v" }, "<C-j>", "<Esc>", { desc = "Quick exit to normal mode" })
unmap("i", ";")
map("i", ";;", "<Esc>A;<C-G>u", { desc = "Add semicoln at EOL" })

-- Scroll
map("n", "<C-e>", "<C-d>", { desc = "Scroll down" })

-- Window
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")
map("n", "<A-n>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<A-i>", "<C-w>l", { desc = "Go to right window", remap = true })
map("n", "<A-u>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<A-e>", "<C-w>j", { desc = "Go to below window", remap = true })
map("n", "<leader>ws", "<C-W>v", { desc = "Split window right", remap = true })

-- Buffer
unmap("n", "<S-h>")
unmap("n", "<S-l>")
map("n", "<S-n>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-i>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Terminal
map("t", "<C-j>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })

-- Fold
map("n", "zo", "za", { desc = "Toggle Fold" })
