return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    win_options = {
      signcolumn = "yes",
    },
    float = {
      padding = 10,
      override = function(conf)
        return conf
      end,
    },
    vim.keymap.set("n", "-", "<cmd> Oil <cr>", { desc = "Open parent directory" }),
  },
}
