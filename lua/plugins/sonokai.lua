return {
	"sainnhe/sonokai",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.sonokai_style = "andromeda" -- andromeda (default), atlantis, shusia, maia, espresso
		vim.g.sonokai_better_performance = 1
		vim.g.sonakai_transparent_background = 2
	end,
}
