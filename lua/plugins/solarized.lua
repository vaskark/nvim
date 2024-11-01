return {
	"maxmx03/solarized.nvim",
	lazy = false,
	priority = 1000,
	---@type solarized.config
	opts = {
		transparent = { enabled = true },
		palette = "selenized", -- solarized (default), selenized
		variant = "spring", -- winter (default), spring, summer, autumn
	},
	config = function(_, opts)
		require("solarized").setup(opts)
	end,
}
