return {
  "ankushbhagats/pastel.nvim",

  config = function()
    require("pastel").setup({
      style = {
        transparent = true,
        italic = true,
      },
    })
  end,
}
