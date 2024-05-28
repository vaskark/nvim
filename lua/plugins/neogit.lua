return {
	"NeogitOrg/neogit",
	branch = "master",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = true,
	auto_close_console = true,
	vim.keymap.set("n", "<leader>ng", "<cmd> Neogit <cr>"),
}
