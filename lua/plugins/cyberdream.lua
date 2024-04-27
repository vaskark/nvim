return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("cyberdream").setup({
			transparent = true,
			hide_fillchars = true,
			borderless_telescope = false,
		})
	end,
}
