return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
    },
  },
  vim.keymap.set("n", "<leader>gp", "<cmd> Gitsigns preview_hunk <cr>", { desc = "Gitsigns preview" }),
}
