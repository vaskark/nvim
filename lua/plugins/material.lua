return {
  "marko-cerovac/material.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("material").setup({
      contrast = {
        cursorline = true,
      },
      plugins = {
        "mini",
        "gitsigns",
        "neogit",
        "neo-tree",
        "noice",
        "nvim-web-devicons",
        "which-key",
      },
      disable = {
        background = true,
      },
      high_visibility = {
        darker = true,
      },
      lualine_style = "stealth", -- default, stealth
    })
  end,
}
