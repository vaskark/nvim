return {
  "pappasam/papercolor-theme-slim",
  lazy = true,
  priority = 1000,
  config = function()
    vim.cmd([[
    augroup custom_papercolorslim_transparent_background
      autocmd!
      autocmd ColorScheme PaperColorSlim highlight Normal guibg=NONE
    augroup end
    ]])
  end,
}
