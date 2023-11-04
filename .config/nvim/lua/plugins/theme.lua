return {
  -- add gruvbox
  {
    "loctvl842/monokai-pro.nvim",
    opts = {
      transparent_background = false,
      devicons = true,
      filter = "pro",
      background_clear = { "float_win", "toggleterm", "telescope", "notify", "which-key" },
      styles = {
        comment = { italic = true },
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "monokai-pro",
    },
  },
}
