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
    formatters = {
      shfmt = {
        append_args = { "-i", "2", "-ci" },
      },
    },
    format_on_save = {
      timeout_ms = 500,
    },
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
