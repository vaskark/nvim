return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		cmdline = {
			view = "cmdline", -- cmdline, cmdline_popup
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
			},
		},
		vim.keymap.set("n", "<leader>nd", "<cmd> NoiceDismiss <cr>", { desc = "Noice dismiss" }),
		vim.keymap.set("n", "<leader>nh", "<cmd> NoiceHistory <cr>", { desc = "Noice history" }),
		vim.keymap.set("n", "<leader>nt", "<cmd> NoiceTelescope <cr>", { desc = "Noice telescope" }),
	},
}
