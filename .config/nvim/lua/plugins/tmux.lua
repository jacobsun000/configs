return {
  "alexghergh/nvim-tmux-navigation",
  event = "VeryLazy",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")
    nvim_tmux_nav.setup({
      disable_when_zoomed = true,
      -- defaults to false
      keybindings = {
        left = "<A-n>",
        down = "<A-e>",
        up = "<A-u>",
        right = "<A-i>",
      },
    })
  end,
}
