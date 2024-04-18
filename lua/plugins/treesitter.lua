return {

  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "bash", "regex", "vim", "vimdoc", "toml", "yaml", "json" },
    auto_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
