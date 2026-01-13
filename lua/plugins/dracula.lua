return {
  "maxmx03/dracula.nvim",
  priority = 1000,
  config = function()
    ---@type dracula
    require("dracula").setup({
      transparent = true,
    })
  end,
}
