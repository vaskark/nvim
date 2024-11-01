return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		delete_to_trash = true,
		win_options = {
			wrap = true,
		},
		skip_confirm_for_simple_edits = true,
		view_options = {
			show_hidden = true,
			is_always_hidden = function(name, _)
				return name == " .. " or name == ".git"
			end,
		},
		float = {
			padding = 20,
		},
	},
	vim.keymap.set("n", "-", "<cmd> Oil <cr>", { desc = "Open parent directory" }),
}
