return {
  "Everblush/nvim",
  name = "everblush",
  lazy = true,
  config = function()
    require("everblush").setup({
      transparent_background = true,
    })
  end,
}
