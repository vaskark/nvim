return {
  "vaskark/papercolor-theme",
  lazy = true,
  priority = 1000,
  config = function()
    vim.g.PaperColor_Theme_Options = {
      theme = {
        default = {
          transparent_background = 1,
        },
      },
    }
  end,
}
