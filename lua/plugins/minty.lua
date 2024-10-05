return {
	{ "nvchad/volt", lazy = true },
	{ "nvchad/minty", lazy = true },
	vim.keymap.set("n", "<leader>mh", '<cmd> lua require("minty.huefy").open() <cr>', { desc = "Minty hues" }),
	vim.keymap.set(
		"n",
		"<leader>ms",
		'<cmd> lua require("minty.shades").open( { border = true }) <cr>',
		{ desc = "Minty shades" }
	),
}
