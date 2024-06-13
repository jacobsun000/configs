-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local unmap = vim.keymap.del
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

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
map({ "n", "v" }, "e", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "v" }, "E", "J")
map({ "n", "v" }, "u", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "v" }, "U", "K")
map({ "n", "v" }, "I", "L")
map({ "n" }, "i", "l")
map({ "n" }, "j", "n")
map({ "n" }, "J", "N")

-------- General --------
map({ "i", "v" }, "jj", "<Esc>")
map({ "i", "v" }, "<C-j>", "<Esc>")
unmap("i", ";")
map("i", ";;", "<Esc>A;<C-G>u")

-- Scroll
map("n", "<C-e>", "<C-d>")

-- Window
-- unmap("n", "<C-h>")
-- unmap("n", "<C-j>")
-- unmap("n", "<C-k>")
-- unmap("n", "<C-l>")
-- Window nevigation is handled by zellij-nav.nvim
-- map("n", "<A-n>", "<C-w>h", { remap = true })
-- map("n", "<A-i>", "<C-w>l", { remap = true })
-- map("n", "<A-u>", "<C-w>k", { remap = true })
-- map("n", "<A-e>", "<C-w>j", { remap = true })
map("n", "<leader>ws", "<C-W>v", { remap = true })

-- Buffer
unmap("n", "<S-h>")
unmap("n", "<S-l>")
map("n", "<S-n>", "<cmd>bprevious<cr>")
map("n", "<S-i>", "<cmd>bnext<cr>")

-- Terminal
map("t", "<C-j>", "<c-\\><c-n>")

-- Fold
map("n", "zo", "za")
