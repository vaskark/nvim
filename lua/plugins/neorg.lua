return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = true,
	require("neorg").setup({
		load = {
			["core.defaults"] = {},
			["core.concealer"] = {},
			["core.dirman"] = {
				config = {
					workspaces = {
						notes = "~/Notes",
					},
					default_workspace = "notes",
				},
			},
		},
	}),
}
