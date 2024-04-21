return {
	"oxfist/night-owl.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("lazy").setup({
			transparent_background = true,
		})
	end,
}
