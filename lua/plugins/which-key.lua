return {
	"folke/which-key.nvim",
	event = "VeryLazy", -- or VimEnter
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {},
}
