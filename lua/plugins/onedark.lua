return {

	"navarasu/onedark.nvim",
	lazy = false,
	config = function()
		require("onedark").setup({
			style = "light", -- dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
		})
	end,
}
