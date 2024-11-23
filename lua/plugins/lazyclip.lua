return {
	"atiladefreitas/lazyclip",
	config = function()
		require("lazyclip").setup()
	end,
	keys = {
		{ "<leader>cw", ":lua require('lazyclip').show_clipboard() <cr>", desc = "Open Clipboard Manager" },
	},
}
