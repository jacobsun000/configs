return {
  -- add monokai-pro
  {
    "loctvl842/monokai-pro.nvim",
    opts = {
      transparent_background = false,
      devicons = true,
      filter = "pro",
      background_clear = { "float_win", "toggleterm", "telescope", "notify", "which-key", "neo-tree", "bufferline" },
      styles = {
        comment = { italic = true },
      },
    },
  },

  { "catppuccin/nvim", disable = true },
  { "folke/tokyonight.nvim", disable = true },

  -- Configure LazyVim to load monokai-pro
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
