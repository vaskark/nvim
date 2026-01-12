return {
  "MeanderingProgrammer/treesitter-modules.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ---@module 'treesitter-modules'
  ---@type ts.mod.UserConfig
  opts = {},
  config = function()
    require("treesitter-modules").setup({
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
      fold = { enable = true },
      highlight = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
      indent = { enable = true },
      -- autotag = { enable = true },
    })
  end,
}
