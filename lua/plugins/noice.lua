return {

	"folke/noice.nvim",
	enabled = true,
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("noice").setup({
			cmdline = {
				view = "cmdline",
			},
			messages = {
				enabled = false,
			},
		})
	end,
}
