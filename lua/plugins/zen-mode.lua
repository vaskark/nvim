return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 0.50,
		},
	},
	vim.keymap.set("n", "<leader>zm", "<cmd> ZenMode <CR>")
}
