return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "modern", -- modern, classic, minimal, powerline, ghost, simple, nonerdfont, amongus
      transparent_bg = false,
    })
  end,
}
