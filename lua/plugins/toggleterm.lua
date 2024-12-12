return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = "<C-\\>",
	},
	vim.keymap.set("n", "<leader>th", "<cmd> ToggleTerm direction=horizontal <cr>", { desc = "Horizontal terminal" }),
	vim.keymap.set(
		"n",
		"<leader>tv",
		"<cmd> ToggleTerm direction=vertical size=50 <cr>",
		{ desc = "Vertical terminal" }
	),
	vim.keymap.set("n", "<leader>tf", "<cmd> ToggleTerm direction=float <cr>", { desc = "Floating terminal" }),
}
