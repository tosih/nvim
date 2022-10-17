-- lua/custom/mappings
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
    ["<C-s>"] = { "<cmd> w <CR>", "save file" },
  },
}

M.custom = {
  n = {
    [",n"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
    [",m"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
    ["<C-q>"] = { "<cmd> cclose <CR>", "close quick window" },
    ["<C-e>"] = { "<cmd> copen <CR>", "open quick window" },
  },
  i = {},
}

return M
