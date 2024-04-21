return {
	"EdenEast/nightfox.nvim",
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				colorblind = {
					enable = false,
				},
			},
		})
	end,
}
