return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },

  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufRead",
    opts = {},
    config = function()
      -- Fold options
      -- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
      vim.o.foldcolumn = "1" -- '0' is not bad
      vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
      require("ufo").setup()
    end,
    keys = {
      {
        "zr",
        function()
          require("ufo").openFoldsExceptKinds({ "comment" })
        end,
        desc = { "Open all folds except comments" },
      },
      {
        "zm",
        function()
          require("ufo").closeAllFolds()
        end,
        desc = "Close all folds",
      },
      {
        "z0",
        function()
          require("ufo").closeFoldsWith(0)
        end,
        desc = "Close f0 Folds",
      },
      {
        "z1",
        function()
          require("ufo").closeFoldsWith(1)
        end,
        desc = "Close f1 Folds",
      },
      {
        "z2",
        function()
          require("ufo").closeFoldsWith(2)
        end,
        desc = "Close L2 folds",
      },
      {
        "z3",
        function()
          require("ufo").closeFoldsWith(3)
        end,
        desc = "Close L3 folds",
      },
      {
        "z4",
        function()
          require("ufo").closeFoldsWith(4)
        end,
        desc = "Close L4 folds",
      },
    },
  },
}
