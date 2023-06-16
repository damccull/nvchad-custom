local lspconfig = require "lspconfig"
local on_attach = lspconfig.on_attach
local capabilities = lspconfig.capabilities

local servers = { "html", "cssls", "sqlls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
