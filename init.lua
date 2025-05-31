-- config
require("config.autocmds")
require("config.options")
require("config.keymaps")
require("config.colorscheme")

-- lazy
require("config.lazy")

-- lua_ls
vim.lsp.enable("lua_ls")
