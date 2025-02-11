return {
  "vague2k/vague.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("vague").setup({
      transparent = true,
    })
  end,
}
