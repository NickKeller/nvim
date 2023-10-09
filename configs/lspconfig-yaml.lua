local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfigyaml = require("lspconfig")

lspconfigyaml.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"yaml", "yml"},
}
