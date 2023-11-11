return {
  "nvim-treesitter/nvim-treesitter",
  incremental_selection = {
    keys = {
      { "<CR>", "init_selection" },
      { "<CR>", "node_incremental" },
      { "<TAB>", "scope_incremental" },
      { "<TAB>", "node_incremental" },
      { "<S-TAB>", "node_decremental" },
    },
    enable = true,
    keymaps = function()
      return {
        init_selection = "<CR>",
        scope_incremental = "<CR>",
        node_incremental = "<TAB>",
        node_decremental = "<S-TAB>",
      }
    end,
  },
}
