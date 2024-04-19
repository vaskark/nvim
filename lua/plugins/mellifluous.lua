return {
	"ramojus/mellifluous.nvim",
	config = function()
		require("mellifluous").setup({
			color_set = "mellifluous", -- mellifluous, alduin, mountain, tender, kanagawa_dragon
			transparent_background = {
				enabled = true,
			},
		})
	end,
}
