return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "folke/snacks.nvim",
  },
  config = true,
  vim.keymap.set("n", "<leader>ng", "<cmd> Neogit <cr>", { desc = "Neogit" }),
}
