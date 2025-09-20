return {
	"Everblush/nvim",
	lazy = false,
  priority = 1000,
	name = "everblush",
	config = function()
		require("everblush").setup({
			transparent_background = true,
		})
	end,
}
