return {
  "sho-87/kanagawa-paper.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    transparent = true,
    overrides = function()
      return {
        NormalFloat = { bg = "none" },
      }
    end,
  },
}
