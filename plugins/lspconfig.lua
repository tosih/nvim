local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "gopls", "marksman", "grammarly" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config {
  virtual_text = false,
}
