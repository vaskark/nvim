return {
  "qaptoR-nvim/chocolatier.nvim",
  lazy = false,
  priority = 1000,
  config = true,
  opts = {
    transparent_mode = true,
    overrides = {
      CursorLineNr = {
        bg = "NONE",
      },
    },
  },
}
