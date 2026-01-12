return {
  "EdenEast/nightfox.nvim",
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
