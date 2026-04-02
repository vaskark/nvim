return {
  "danfry1/lume",
  lazy = true,
  priority = 1000,
  config = function()
    require("lume").setup({
      transparent = true,
    })
  end,
}
