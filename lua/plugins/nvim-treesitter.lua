return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "OXY2DEV/markview.nvim",
  },
  init = function()
    vim.env.CC = "clang"
  end,
}
