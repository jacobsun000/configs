-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymap helper function
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------- Leader Key  --------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------- Insert Mode --------
map("i", "jj", "<Esc>") -- Quick exit
map("i", ";;", "<Esc>A;") -- Add semicolon at EOF

-------- Normal Mode --------
map("n", "k", "i") -- Colemak
map("n", "K", "I")
map("n", "l", "u")
map("n", "L", "U")
map("n", "h", "e")
map("n", "H", "E")
map("n", "j", "n")
map("n", "J", "N")
map("n", "n", "h")
map("n", "N", "H")
map("n", "e", "j")
map("n", "E", "J")
map("n", "u", "k")
map("n", "U", "K")
map("n", "i", "l")
map("n", "I", "L")

-------- Visual Mode --------
map("v", "k", "i") -- Colemak
map("v", "K", "I")
map("v", "l", "u")
map("v", "L", "U")
map("v", "h", "e")
map("v", "H", "E")
map("v", "j", "n")
map("v", "J", "N")
map("v", "n", "h")
map("v", "N", "H")
map("v", "e", "j")
map("v", "E", "J")
map("v", "u", "k")
map("v", "U", "K")
map("v", "i", "l")
map("v", "I", "L")

map("v", "jj", "<Esc>") -- Quick exit
map("v", "<Tab>", "<gv") -- Indent
map("v", "<S-Tab>", ">gv") -- Indent
