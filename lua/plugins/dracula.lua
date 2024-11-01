return {
	"maxmx03/dracula.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("dracula").setup({
			transparent_bg = true,
		})
	end,
}
