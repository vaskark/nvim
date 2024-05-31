return {
	"shmerl/neogotham",
	lazy = false,
	priority = 1000,
	config = function()
		require("neogotham").setup({
			oldgotham = false,
		})
	end,
}
