return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<A-v>",
        node_incremental = "v",
        scope_incremental = false,
        node_decremental = "V",
      },
    },
  },
}
