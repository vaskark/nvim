return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  -- config = true,
  config = function()
    require("neogit").setup({})
  end,
  vim.keymap.set("n", "<leader>ng", "<cmd> Neogit <cr>", { desc = "Neogit" }),
}
