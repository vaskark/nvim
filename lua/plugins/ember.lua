return {
  "ember-theme/nvim",
  name = "ember",
  lazy = true,
  priority = 1000,
  config = function()
    require("ember").setup({
      transparent = true,
    })
  end,
}
