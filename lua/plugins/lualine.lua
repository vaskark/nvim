return {

	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
			},

			fmt = { "string.lower" },

			sections = {
				lualine_a = { { "mode", padding = { left = 1, right = 1 } } },
				-- lualine_a = { { 'mode', fmt = function(str) return str:sub(1,1) end } },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
				-- lualine_z = { "os.date('%-I:%M%p')", 'data', "require'lsp-status'.status()" }
			},

			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
