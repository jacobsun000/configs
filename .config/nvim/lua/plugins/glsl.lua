return {
  { "tikhomirov/vim-glsl", ft = "glsl" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        glsl_analyzer = {},
      },
      setup = {
        glsl_analyzer = function()
          require("lspconfig").glsl_analyzer.setup({})
          return true
        end,
      },
    },
  },
}
