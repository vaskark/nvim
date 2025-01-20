return {
  "wtfox/jellybeans.nvim",
  enabled = false,
  priority = 1000,
  config = function()
    require("jellybeans").setup({
      transparent = true,
      plugins = {
        all = true,
      },
    })
  end,
}
