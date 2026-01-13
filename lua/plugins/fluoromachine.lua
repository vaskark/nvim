return {
  "maxmx03/fluoromachine.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("fluoromachine").setup({
      glow = true,
      theme = "retrowave", -- fluoromachine, retrowave, delta
      transparent = true,
    })
  end,
}
