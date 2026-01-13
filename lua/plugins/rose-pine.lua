return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = true,
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
