return {

	"kdheepak/lazygit.nvim",
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").load_extension("lazygit")
		vim.keymap.set("n", "<leader>lg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })
	end,
}
