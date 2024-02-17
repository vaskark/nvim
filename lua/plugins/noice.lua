return {

	"folke/noice.nvim",
	enabled = true,
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			cmdline = {
				view = "cmdline",
			},
			messages = {
				enabled = false,
			},
		})
		vim.keymap.set("n", "<leader>nd", "<cmd> NoiceDismiss <cr>", { desc = "Noice dismiss" })
		vim.keymap.set("n", "<leader>nh", "<cmd> NoiceHistory <cr>", { desc = "Noice history" })
		vim.keymap.set("n", "<leader>nt", "<cmd> NoiceTelescope <cr>", { desc = "Noice telescope" })
	end,
}
