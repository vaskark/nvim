return {
  "savq/melange-nvim",
  lazy = true,
  priority = 1000,
  config = function()
    local group = vim.api.nvim_create_augroup("OverrideMelange", {})
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "melange",
      callback = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      end,
      group = group,
    })
  end,
}
