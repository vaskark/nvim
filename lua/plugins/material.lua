return {
  "marko-cerovac/material.nvim",
  config = function()
    require("material").setup({
      contrast = {
        cursorline = false,
      },
      plugins = {
        "gitsigns",
        "mini",
        "neogit",
        "neo-tree",
        "neorg",
        "noice",
        "nvim-cmp",
        "nvim-web-devicons",
        "telescope",
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
