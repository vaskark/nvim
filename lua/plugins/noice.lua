return {
	"folke/noice.nvim",
	enabled = true,
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		cmdline = {
			view = "cmdline",
		},
		-- messages = {
		--  enabled = false,
		-- },
		lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
			},
			-- signature = {
			-- 	auto_open = {
			-- 		enabled = false,
			-- 	},
			-- },
		},
		presets = {
			bottom_search = true, -- use a classic bottom cmdline for search
			command_palette = false, -- position the cmdline and popupmenu together
			long_message_to_split = true, -- long messages will be sent to a split
			inc_rename = false, -- enables an input dialog for inc-rename.nvim
			lsp_doc_border = true, -- add a border to hover docs and signature help
		},
		vim.keymap.set("n", "<leader>nd", "<cmd> NoiceDismiss <cr>", { desc = "Noice dismiss" }),
		vim.keymap.set("n", "<leader>nh", "<cmd> NoiceHistory <cr>", { desc = "Noice history" }),
		vim.keymap.set("n", "<leader>nt", "<cmd> NoiceTelescope <cr>", { desc = "Noice telescope" }),
	},
}
