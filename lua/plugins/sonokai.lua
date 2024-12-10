return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.sonokai = {
      style = "espresso", -- default, atlantis, andromeda, shusia, maia, espresso
      better_performance = 1,
      transparent_background = 2,
    }
  end,
}
