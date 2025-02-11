return {
  "sainnhe/everforest",
  lazy = true,
  priority = 1000,
  config = function()
    vim.g.everforest_background = "medium" -- hard, medium (default), soft
    vim.g.everforest_better_performance = 1
    vim.g.everforest_transparent_background = 2
  end,
}
