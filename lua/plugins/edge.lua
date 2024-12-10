return {
  "sainnhe/edge",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.edge = {
      style = "default", -- default, aura, neon
      better_performance = 1,
      transparent_background = 2,
    }
  end,
}
