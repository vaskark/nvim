return {
  "EdenEast/nightfox.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        transparent = true,
        styles = {
          commments = "italic",
        },
      },
    })
  end,
}
