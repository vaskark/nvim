-- default
vim.cmd.colorscheme("lushwal")

-- lushwal
vim.g.lushwal_configuration = {
	compile_to_vimscript = true,
	color_overrides = nil,
	addons = {
		gitsigns_nvim = true,
		indent_blankline_nvim = true,
		lualine = true,
		markdown = true,
		native_lsp = true,
		nvim_cmp = true,
		telescope_nvim = true,
		treesitter = true,
		which_key_nvim = true,
	},
}

require("lushwal").add_reload_hook({
	vim.cmd("LushwalCompile"),
})
