return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.sonokai_style = "default" -- default, atlantis, andromeda, shusia, maia, espresso
		vim.g.sonokai_better_performance = 1
		vim.g.sonakai_transparent_background = 2
	end,
}
