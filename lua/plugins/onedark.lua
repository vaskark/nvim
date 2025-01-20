return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "warmer", -- dark, darker, cool, deep, warm, warmer, light
      transparent = true,
      lualine = {
        transparent = true,
      },
    })
  end,
}
