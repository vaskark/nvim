return {
  "ATTron/bebop.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("bebop").setup({
      transparent = true,
      terminal_colors = true,
      preset = "faye", -- default, spike, faye
    })
  end,
}
