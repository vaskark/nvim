return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material = {
      better_performance = 1,
      transparent_background = 2,
      material_background = "soft", -- hard, medium (default), soft
      foreground = "material", -- material (default), mix, original
    }
  end,
}
