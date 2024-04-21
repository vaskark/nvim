return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized").setup({
			palette = "solarized", -- solarized, selenized
			theme = "solarized", -- default, neo
			transparent = true,
		})
	end,
}
