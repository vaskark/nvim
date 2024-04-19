return {
  "NeogitOrg/neogit",
  branch = "nightly",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = true,
  vim.keymap.set("n", "<leader>gn", "<cmd> Neogit <cr>"),
}
