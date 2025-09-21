return {
  "ellisonleao/gruvbox.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      transparent_mode = true,
    })
  end,
}
