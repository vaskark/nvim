return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("cyberdream").setup({
			cache = true,
			transparent = true,
			hide_fillchars = true,
		})
	end,
}
