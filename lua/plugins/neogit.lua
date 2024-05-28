return {
	"NeogitOrg/neogit",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("neogit").setup({
			auto_close_console = true,
		})
	end,
	vim.keymap.set("n", "<leader>ng", "<cmd> Neogit <cr>"),
}
