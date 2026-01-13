return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
      flavour = "auto", -- latte, frappe, macchiato, mocha
      transparent_background = true,
      float = {
        transparent = true,
        solid = false,
      },
      auto_integrations = true,
    })
  end,
}
