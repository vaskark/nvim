return {

  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
      -- fmt = string.lower,
    },
    sections = {
      -- lualine_a = { "mode" },
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
        },
      },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = { "filename" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
      -- lualine_z = { { "datetime", style = "%-I:%M%p" } },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {
      -- lualine_z = { { "datetime", style = "%-I:%M%p" } },
    },
    winbar = {},
    inactive_winbar = {},
    extensions = { "neo-tree", "oil", "toggleterm" },
    vim.keymap.set("n", "<leader>lh", "<cmd> lua require('lualine').hide() <cr>", { desc = "Lualine hide" }),
    vim.keymap.set(
      "n",
      "<leader>ls",
      "<cmd> lua require('lualine').hide({ unhide=true }) <cr>",
      { desc = "Lualine show" }
    ),
  },
}
