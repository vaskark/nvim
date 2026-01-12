return {
  "MeanderingProgrammer/treesitter-modules.nvim",
  config = function()
    require("treesitter-modules").setup({
      indent = { enable = true },
      highlight = { enable = true },
      fold = { enable = true },
      autotag = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
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
