return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {
		indent = { char = "|" },
	},
	config = function()
		require("ibl").setup()
	end,
}
