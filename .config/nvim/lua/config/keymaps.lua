-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymap helper function
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Terminal Mappings

-------- Leader Key  --------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-------- Insert Mode --------
map("i", "jj", "<Esc>", { desc = "Quick exit to normal mode" })
map("i", ";;", "<Esc>A;", { desc = "Add semicoln at EOL" })

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
map("v", "jj", "<Esc>", { desc = "Quick exit to normal mode" })

-------- Terminal Mode --------
map("t", "<C-n>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
map("t", "<C-e>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
map("t", "<C-u>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
map("t", "<C-i>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
map("t", "<C-w>", [[<C-\><C-n><C-w>]], { desc = "Terminal Window Mappings" })
map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
