return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  priority = 49,
  dependencies = {
    "saghen/blink.cmp",
  },
  vim.keymap.set("n", "<leader>um", "<cmd> Markview <cr>", { desc = "Toggle markdown" }),
  vim.keymap.set("n", "<leader>uM", "<cmd> Markview splitToggle <cr>", { desc = "Toggle markdown (split)" }),
}
