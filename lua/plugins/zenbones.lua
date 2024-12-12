return {
  "zenbones-theme/zenbones.nvim",
  dependencies = "rktjmp/lush.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.duckbones_transparent_background = true
    vim.g.forestbones_transparent_background = true
    vim.g.kanagawabones_transparent_background = true
    vim.g.neobones_transparent_background = true
    vim.g.nordbones_transparent_background = true
    vim.g.rosebones_transparent_background = true
    vim.g.seoulbones_transparent_background = true
    vim.g.tokyobones_transparent_background = true
    vim.g.vimbones_transparent_background = true
    vim.g.zenbones_transparent_background = true
    vim.g.zenburned_transparent_background = true
    vim.g.zenwritten_transparent_background = true
  end,
}
