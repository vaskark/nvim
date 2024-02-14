return {

	"marko-cerovac/material.nvim",
	config = function()
		require("material").setup({
			lualine_style = "stealth",
			disable = {
				background = true,
			},
		})
	end,
}
