-- config
require("config.autocmds")
require("config.options")
require("config.keymaps")
require("config.colorschemes")

-- lazy
require("config.lazy")

-- lsp
vim.lsp.enable("lua_ls")
