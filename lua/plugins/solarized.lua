return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized").setup({
			palette = "solarized", -- solarized, selenized
			transparent = true,
			theme = "default", -- default, neo
		})
	end,
}
