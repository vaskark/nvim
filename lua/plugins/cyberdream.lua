return {
  "scottmckendry/cyberdream.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      cache = true,
    })
  end,
}
