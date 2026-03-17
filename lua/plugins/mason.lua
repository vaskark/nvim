return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", opts = {} },
    opts = {
      auto_update = true,
      ensure_installed = {
        "bashls",
        "lua_ls",
        "stylua",
      },
      dependencies = {
        {
          "mason-org/mason.nvim",
          opts = {
            ui = {
              icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
              },
            },
          },
        },
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        auto_update = true,
        ensure_installed = {
          "stylua",
          "shfmt",
          "tree-sitter-cli",
        },
      })
    end,
  },
}
