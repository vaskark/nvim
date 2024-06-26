return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-ui-select.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{
			"nvim-telescope/telescope-file-browser.nvim",
			dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		},
	},
	config = function()
		require("telescope").setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
						["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
						["<C-q>"] = require("telescope.actions").send_selected_to_qflist
							+ require("telescope.actions").open_qflist,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			},
		})
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("file_browser")

		vim.keymap.set("n", "<leader>fb", "<cmd> Telescope buffers theme=ivy <cr>", { desc = "List buffers" })
		vim.keymap.set("n", "<leader>fa", "<cmd> Telescope find_files hidden=true <cr>", { desc = "Find all files" })
		vim.keymap.set("n", "<leader>ff", "<cmd> Telescope find_files <cr>", { desc = "Find files" })
		vim.keymap.set("n", "<leader>fo", "<cmd> Telescope oldfiles <cr>", { desc = "Recent files" })
		vim.keymap.set("n", "<leader>fs", "<cmd> Telescope grep_string <cr>", { desc = "String search" })
		vim.keymap.set("n", "<leader>fw", "<cmd> Telescope live_grep <cr>", { desc = "Live text search" })
		vim.keymap.set(
			"n",
			"<leader>fz",
			"<cmd> Telescope current_buffer_fuzzy_find <cr>",
			{ desc = "Current buffer text search" }
		)
		vim.keymap.set("n", "<leader>fn", function()
			require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "Find Neovim files" })
		vim.keymap.set("n", "<leader>tb", "<cmd> Telescope <cr>", { desc = "Telescope" })
		vim.keymap.set("n", "<leader>tc", "<cmd> Telescope colorscheme <cr>", { desc = "Colorschemes" })
	end,
}
