return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.sonokai_style = "espresso" -- default, atlantis, andromeda, shusia, maia, espresso
    vim.g.sonokai_better_performance = 1
    vim.g.sonokai_enable_italic = true
    vim.g.sonokai_transparent_background = 2
  end,
}
