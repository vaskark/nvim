return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/Documents/notes/**/*",
      org_default_notes_file = "~/Documents/notes/refile.org",
    })
  end,
}
