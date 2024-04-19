return {
	"ribru17/bamboo.nvim",
	lazy = false,
	priority = 1000,
  config = function()
    require('bamboo').setup({
      toggle_style_key = "nil",
			lualine = {
				transparent = true,
			},
	  })
  end,
}
