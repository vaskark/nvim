return {
  "EdenEast/nightfox.nvim",
  lazy = true,
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
