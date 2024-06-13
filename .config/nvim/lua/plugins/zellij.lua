return {
  "https://git.sr.ht/~swaits/zellij-nav.nvim",
  lazy = true,
  event = "VeryLazy",
  keys = {
    { "<A-n>", "<cmd>ZellijNavigateLeft<cr>", { silent = true, desc = "navigate left" } },
    { "<A-e>", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "navigate down" } },
    { "<A-u>", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "navigate up" } },
    { "<A-i>", "<cmd>ZellijNavigateRight<cr>", { silent = true, desc = "navigate right" } },
  },
  opts = {},
}
