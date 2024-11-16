return {
	"bluz71/vim-moonfly-colors",
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.moonflyCursorColor = true
		vim.g.moonflyItalics = false
		vim.g.moonflyNormalFloat = true
		vim.g.moonflyTransparent = true
	end,
}
