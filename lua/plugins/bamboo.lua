return {
  "ribru17/bamboo.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("bamboo").setup({
      transparent = true,
      lualine = {
        transparent = true,
      },
    })
  end,
}
