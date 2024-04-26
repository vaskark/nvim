return {
	"mcchrish/zenbones.nvim",
	dependencies = "rktjmp/lush.nvim",
	config = function()
		vim.g.rosebones = { compat = 1, italic_comments = false }
	end,
}
