return {
  "rmagatti/auto-session",
  enabled = false,
  lazy = false,
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    auto_restore = false,
    suppressed_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
  },
  keys = {
    { "<leader>sr", "<cmd> SessionRestore <cr>", desc = "Restore session" },
    { "<leader>ss", "<cmd> SessionSave <cr>", desc = "Save session" },
  },
}
