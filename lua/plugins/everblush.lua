return {
	"Everblush/nvim",
	lazy = true,
  priority = 1000,
	name = "everblush",
	config = function()
		require("everblush").setup({
			transparent_background = true,
		})
	end,
}
