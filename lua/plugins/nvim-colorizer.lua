return {
  "NvChad/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
    user_default_options = {
      names = false,
      mode = "background", -- background, foreground, virtualtext
    },
  },
}
