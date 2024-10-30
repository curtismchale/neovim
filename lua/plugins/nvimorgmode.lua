return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/Documents/org/**/*",
      org_default_notes_file = "~/Documents/org/inbox.org",
      org_archive_location = "~/Documents/org/archive/%s",
      org_deadline_warning_days = 2,
    })
  end,
}
