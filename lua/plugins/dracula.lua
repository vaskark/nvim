return {
  "maxmx03/dracula.nvim",
  priority = 1000,
  config = function()
    require("dracula").setup({
      transparent = true,
    })
  end,
}
