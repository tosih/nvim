-- lua/custom/mappings
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
  },
}

M.custom = {
  n = {
    [",n"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    [",m"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
    ["<C-a>"] = { "<cmd> cclose <CR>", "close quick window" },
  },
  i = {}
}

return M
