-- Lazy.nvim --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
   vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
    { import = "neovide" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = {},
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
      },
    },
  },
})

-- Neovide --
if vim.g.neovide then
  require("lazy").setup({
    spec = {
      { import = "neovide" },
    },
  })
end

local M = {}

---@param opts? LazyVimConfig
function M.setup(opts)
  require("lazyvim.config").setup(opts)
end

return M
