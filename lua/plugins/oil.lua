return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		view_options = {
			show_hidden = true,
		},
	},
	vim.keymap.set("n", "-", "<cmd> Oil <cr>", { desc = "Open parent directory" }),
}
