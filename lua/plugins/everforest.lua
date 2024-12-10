return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.everforest = {
      background = "medium", -- hard, medium (default), soft
      better_performance = 1,
      transparent_background = 2,
    }
  end,
}
