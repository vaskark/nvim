return {
  "0xstepit/flow.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("flow").setup({
      high_contrast = false,
      transparent = true,
      fluo_color = "orange", -- pink, yellow, orange, or green.
      mode = "base", -- dark, bright, desaturate, or base.
      aggressive_spell = false,
    })
  end,
}
