return {
  "sho-87/kanagawa-paper.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    transparent = true,
    cache = true,
    overrides = function()
      return {
        NormalFloat = { bg = "none" },
      }
    end,
  },
}
