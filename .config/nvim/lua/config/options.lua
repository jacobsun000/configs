-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- opt.shiftwidth = 4
-- opt.tabstop = 4
opt.expandtab = true
opt.scrolloff = 8
opt.iskeyword:remove("_")
opt.wrap = true
opt.linebreak = true

-- Neovide
if vim.g.neovide then
  vim.g.neovide_profiler = true
  vim.o.guifont = "Source Code Pro:h14"
  vim.g.neovide_refresh_rate = 144
end
