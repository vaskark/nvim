return {
	"Mofiqul/dracula.nvim",
	config = function()
		require("dracula").setup({
			colors = {},
			italic_comment = false,
			overrides = {},
			show_end_of_buffer = false,
			transparent_bg = true,
		})
	end,
}
