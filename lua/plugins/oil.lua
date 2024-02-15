return {

	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			win_options = {
				signcolumn = "yes",
			},
			float = {
				padding = 10,
				override = function(conf)
					return conf
				end,
			},
			vim.keymap.set("n", "-", "<cmd> Oil <cr>", { desc = "Open parent directory" }),
		})
	end,
}
