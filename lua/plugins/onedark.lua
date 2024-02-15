return {

  "navarasu/onedark.nvim",
  lazy = false,
  config = function()
    require("onedark").setup({
      style = "dark", -- dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    })
  end,
}
