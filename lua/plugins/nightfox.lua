return {
  "EdenEast/nightfox.nvim",
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
