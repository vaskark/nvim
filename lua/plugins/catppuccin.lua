return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			default_integrations = true,
			integrations = {
				diffview = true,
				mason = true,
				neotree = true,
				noice = true,
				notify = true,
				which_key = true,
			},
		})
	end,
}
