local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "catppuccin_latte" },
}

M.plugins = require "custom.plugins"
M.mappings = require "custom.mappings"

return M
