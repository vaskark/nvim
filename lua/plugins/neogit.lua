return {

  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = true,
  vim.keymap.set("n", "<leader>gs", "<cmd> Neogit <cr>"),
}
