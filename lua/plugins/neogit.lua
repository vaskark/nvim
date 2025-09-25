return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "folke/snacks.nvim",
  },
  config = true,
  vim.keymap.set("n", "<leader>gn", "<cmd> Neogit <cr>", { desc = "Neogit" }),
}
