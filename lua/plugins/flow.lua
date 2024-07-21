return {
	"0xstepit/flow.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("flow").setup({
			transparent = true,
			fluo_color = "orange", -- pink, yellow, orange, green
			mode = "normal", -- normal, dark, bright
			agressive_spell = "false",
		})
	end,
}
