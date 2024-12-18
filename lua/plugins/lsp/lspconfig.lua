return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "daghen/blink.cmp",
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    require("lspconfig").lua_ls.setup({
      capabilities = capabilities,
    })
  end,
}
