return {
	"rmagatti/auto-session",
  lazy = false,
  ---@module "auto-session"
  ---@type AutoSession.Config
	opts = {			
		auto_restore = false,
		suppressed_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
	},	
  keys = {
    { '<leader>wr', '<cmd>SessionRestore<CR>', desc = 'Restore session' },
    { '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
  },

}
