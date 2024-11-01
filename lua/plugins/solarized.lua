return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	---@type solarized.config
	opts = {
		transparent = { enabled = true },
		palette = "solarized", -- solarized (default), selenized
		variant = "spring", -- "spring" | "summer" | "autumn" | "winter" (default)
	},
	config = function(_, opts)
		require("solarized").setup(opts)
	end,
}
