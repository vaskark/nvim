return {
  "rachartier/tiny-glimmer.nvim",
  event = "TextYankPost",
  opts = {
    default_animation = "pulse", -- fade, reverse_fade, bounce, left_to_right, pulse, rainbow
    overwrite = {
      search = {
        enabled = true,
        default_animation = "pulse",
      },
      paste = {
        enabled = true,
      },
    },
    transparency_color = "#000000",
  },
}
