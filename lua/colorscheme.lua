-- default
vim.cmd([[colorscheme lushwal]])

-- lushwal
require("lushwal").add_reload_hook({
	vim.cmd("LushwalCompile"),
})
