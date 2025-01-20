return {
  "olimorris/onedarkpro.nvim",
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      styles = {
        comments = "italic",
        functions = "italic",
        conditionals = "italic",
      },
      options = {
        cursorline = true,
        transparency = true,
        lualine_transparency = true,
      },
    })
  end,
}
