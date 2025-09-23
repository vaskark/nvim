return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    "OXY2DEV/markview.nvim",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      indent = { enable = true },
      highlight = { enable = true },
      folds = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "bash",
        "git_config",
        "gitignore",
        "ini",
        "json",
        "jsonc",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "ssh_config",
        "toml",
        "vim",
        "vimdoc",
        "yaml",
      },
    })
  end,
}
