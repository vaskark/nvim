return {
  "maxmx03/dracula.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("dracula").setup({
      transparent = true,
    })
  end,
}
