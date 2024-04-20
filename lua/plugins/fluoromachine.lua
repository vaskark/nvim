return {
	{
		"maxmx03/fluoromachine.nvim",
		config = function()
			require("fluoromachine").setup({
				glow = false,
				theme = "retrowave", --fluoromachine, retrowave, delta
				transparent = "full",
			})
		end,
	},
}
