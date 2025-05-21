-- config
require("config.autocmds")
require("config.options")
require("config.keymaps")
require("config.colorschemes")

-- lazy
require("config.lazy")

-- lua_ls
vim.lsp.config("lua_ls", {
  on_init = function()
    print("lua_ls now runs in the background")
  end,
})
vim.lsp.enable("lua_ls")
