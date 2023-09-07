local opts = {
  log_level = "error",
  auto_save_enabled = true,
  auto_restore_enabled = true,
  auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
}

require('auto-session').setup(opts)
