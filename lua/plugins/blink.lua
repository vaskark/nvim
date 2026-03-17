return {
  "saghen/blink.cmp",
  event = { "InsertEnter", "CmdwinEnter" },
  dependencies = {
    "rafamadriz/friendly-snippets",
    "moyiz/blink-emoji.nvim",
  },
  version = "1.*",
  -- branch = "v1",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = {
        auto_show = false,
        window = {
          border = "single",
        },
      },
      list = {
        selection = {
          auto_insert = false,
          preselect = true,
        },
      },
      menu = {
        auto_show = function(ctx) -- don't show cmdline completion automatically
          return ctx.mode ~= "cmdline"
        end,
        border = "single",
        draw = {
          columns = { { "kind_icon", "label", gap = 1 }, { "kind" } },
          treesitter = { "lsp" },
        },
      },
      ghost_text = {
        enabled = false,
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    keymap = { preset = "default" },
    signature = { enabled = true },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer", "emoji" },
      providers = {
        lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 1000,
        },
        lsp = {
          name = "lsp",
          enabled = true,
          module = "blink.cmp.sources.lsp",
          score_offset = 950,
        },
        snippets = {
          name = "snippets",
          enabled = true,
          module = "blink.cmp.sources.snippets",
          score_offset = 920,
        },
        emoji = {
          module = "blink-emoji",
          name = "Emoji",
          score_offset = 15,
          opts = {
            insert = true,
            ---@type string|table|fun():table
            trigger = function()
              return { ":" }
            end,
          },
          should_show_items = function()
            return vim.tbl_contains(
              -- Enable emoji completion only for git commits and markdown.
              -- By default, enabled for all file-types.
              { "gitcommit", "markdown", "text" },
              vim.o.filetype
            )
          end,
        },
      },
    },
  },
  opts_extend = { "sources.default" },
}
