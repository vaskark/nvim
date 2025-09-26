local map = vim.keymap.set
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    open_mapping = "<C-\\>",
  },
  map("n", "<leader>th", "<cmd> ToggleTerm direction=horizontal <cr>", { desc = "Horizontal terminal" }),
  map("n", "<leader>tv", "<cmd> ToggleTerm direction=vertical size=50 <cr>", { desc = "Vertical terminal" }),
  map("n", "<leader>tf", "<cmd> ToggleTerm direction=float <cr>", { desc = "Floating terminal" }),
}
