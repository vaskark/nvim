return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("solarized").setup({
			transparent = {
				enabled = true,
			},
			palette = "solarized", -- solarized (default), selenized
			variant = "winter", -- "spring" | "summer" | "autumn" | "winter" (default)
		})
	end,
}
