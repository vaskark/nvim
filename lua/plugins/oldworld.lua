return {
  "dgox16/oldworld.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "cooler", -- default, oled, cooler
    highlight_overrides = {
      Normal = { bg = "NONE" },
      NormalNC = { bg = "NONE" },
      CursorLine = { bg = "#222128" },
    },
  },
}
