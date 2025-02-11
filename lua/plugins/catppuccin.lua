return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      default_integrations = true,
      integrations = {
        blink_cmp = true,
        diffview = true,
        mason = true,
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        which_key = true,
      },
    })
  end,
}
