return {
  "saghen/blink.cmp",
  event = { "InsertEnter", "CmdwinEnter" },
  dependencies = {
    "rafamadriz/friendly-snippets",
    -- "moyiz/blink-emoji.nvim",
  },
  version = "1.*",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = "default" },
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
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
          columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
          treesitter = { "lsp" },
        },
      },
      ghost_text = {
        enabled = false,
      },
    },
    signature = { enabled = true },
    sources = {
      default = { "lazydev", "lsp", "path", "snippets", "buffer" },
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
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
