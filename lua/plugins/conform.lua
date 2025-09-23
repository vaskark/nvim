return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {},
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
    },

    format_on_save = {
      timeout_ms = 500,
    },

    formatters = {
      shfmt = {
        append_args = { "-i", "2", "-ci" },
      },
    },
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
