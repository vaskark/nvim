return {
	"0xstepit/flow.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("flow").setup({
			dark_theme = true, -- Set the theme with dark background.
			high_contrast = false, -- Make the dark background darker or the light background lighter.
			transparent = true, -- Set transparent background.
			fluo_color = "orange", -- Color used as fluo. Available values are pink, yellow, orange, or green.
			mode = "base", -- Mode of the colors. Available values are: dark, bright, desaturate, or base.
			aggressive_spell = false, -- Use colors for spell check.
		})
	end,
}
