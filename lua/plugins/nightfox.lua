return {

	"EdenEast/nightfox.nvim",
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				module_default = true,
				colorblind = {
					enable = false,
				},
				modules = {},
			},
		})
	end,
}
