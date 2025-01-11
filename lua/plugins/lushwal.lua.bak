return {
	"oncomouse/lushwal.nvim",
	enabled = false,
	dependencies = {
		{ "rktjmp/lush.nvim" },
		{ "rktjmp/shipwright.nvim" },
	},
	cmd = "LushwalCompile",
	init = function()
		vim.g.lushwal_configuration = {
			addons = {
				gitsigns_nvim = true,
				indent_blankline_nvim = true,
				lualine = true,
				markdown = true,
				native_lsp = true,
				neogit = true,
				nvim_cmp = true,
				nvim_tree_lua = true,
				telescope_nvim = true,
				treesitter = true,
				which_key_nvim = true,
			},
		}
	end,
	config = function()
		require("lushwal").add_reload_hook({
			vim.cmd("LushwalCompile"),
		})
	end,
}
