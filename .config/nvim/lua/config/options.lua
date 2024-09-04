-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = true
opt.scrolloff = 8
opt.iskeyword:remove("_")
opt.wrap = true
opt.linebreak = true
-- Neovide
if vim.g.neovide then
  vim.o.guifont = "Source Code Pro:h13"
  vim.o.cursorline = false
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_animation_legnth = 0.05
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  -- vim.g.neovide_profiler = true
  -- vim.g.neovide_fullscreen = true
end
