return {
  "sainnhe/edge",
  lazy = true,
  priority = 1000,
  config = function()
    vim.g.edge_style = "default" -- default, aura, neon
    vim.g.edge_better_performance = 1
    vim.g.edge_transparent_background = 2
  end,
}
