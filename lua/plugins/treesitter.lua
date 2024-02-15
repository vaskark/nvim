return {

	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "bash", "regex", "vim", "vimdoc", "toml", "yaml", "json" },
			auto_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
