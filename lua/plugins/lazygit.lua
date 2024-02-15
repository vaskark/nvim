return {

	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
  config = function()
    require("telescope").load_extension("lazygit")
  end,

  vim.keymap.set("n", "<leader>lg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })

}
