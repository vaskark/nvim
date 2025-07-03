return {
  "rose-pine/neovim",
  lazy = true,
  priority = 1000,
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      styles = {
        transparency = true,
      },
      highlight_groups = {
        StatusLine = { fg = "pine", bg = "pine", blend = 10 },
        StatusLineNC = { fg = "subtle", bg = "surface" },
      },
    })
  end,
}
