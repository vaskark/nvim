return {
  "pappasam/papercolor-theme-slim",
  config = function()
    vim.cmd([[
      augroup custom_papercolorslim_transparent_background
        autocmd!
        autocmd ColorScheme PaperColorSlim highlight Normal guibg=NONE
      augroup end
  ]])
  end,
}
