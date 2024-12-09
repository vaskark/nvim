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
    { "<leader>sr", "<cmd>SessionRestore<CR>", desc = "Restore session" },
    { "<leader>ss", "<cmd>SessionSave<CR>", desc = "Save session" },
  },
}
