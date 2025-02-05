return {
  "oonamo/ef-themes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("ef-themes").setup({
      light = "ef-spring",
      dark = "ef-winter",
      transparent = true,
      styles = {
        comments = { italic = true },
        keywords = { bold = true },
        functions = {},
        variables = {},
        classes = { bold = true },
        types = { bold = true },

        diagnostic = "default", -- Can be "full"
        pickers = "default", -- Can be "borderless"
      },

      modules = {
        blink = true,
        fzf = true,
        gitsigns = true,
        mini = true,
        neogit = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },

      --- Override any color from the ef-theme
      ---@param colors Ef-Theme
      ---@param name string
      on_colors = function(colors, name) end,

      --- Override specific highlights
      ---@param highlights table
      ---@param colors Ef-Theme
      ---@param name string
      ---@return table
      on_highlights = function(highlights, colors, name)
        -- Returns a table of highlights
        -- return {
        --   Normal = { fg = colors.fg_alt, bg = colors.bg_inactive }
        --   ObscurePlugin = { fg = colors.yellow_faint }
        -- }
      end,

      options = {
        compile = true, -- Whether to compile a theme
        compile_path = vim.fn.stdpath("cache") .. "/ef-themes",
      },
    })
  end,
}
