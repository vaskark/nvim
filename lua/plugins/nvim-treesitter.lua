return {
	"nvim-treesitter/nvim-treesitter",
	-- event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = false,
			sync_install = false,
			modules = {},
			ignore_install = {},
			highlight = {
				enable = true,
				-- disable for large files
				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"bash",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"query",
				"regex",
				"toml",
				"vim",
				"vimdoc",
				"yaml",
			},
		})
	end,
}
