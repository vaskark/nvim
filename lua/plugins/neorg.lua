return {
  {
    "vhyrro/luarocks.nvim",
    enabled = false,
    -- dependencies = {
    --   "MunifTanjim/nui.nvim",
    --   "nvim-neotest/nvim-nio",
    --   "nvim-neorg/lua-utils.nvim",
    --   "nvim-lua/plenary.nvim"
    -- },
    opts = {
      luarocks_build_args = {
        "--with-lua-include=/usr/include",
      },
    },
    priority = 1000, -- We'd like this plugin to load first out of the rest
    config = true, -- This automatically runs `require("luarocks-nvim").setup()`
  },

  {
    "nvim-neorg/neorg",
    enabled = false,
    dependencies = { "luarocks.nvim" },
    config = function()
      require("neorg").setup()
    end,
  },
}
