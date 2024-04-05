local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfigyaml = require("lspconfig")

lspconfigyaml.helm_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"helm"},
    settings = {
        ['helm-ls'] = {
            yamlls = {
                path = "/home/azureuser/.local/share/nvim/mason/bin/yaml-language-server"
            }
        }
    }
}

lspconfigyaml.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"yaml", "yml" }
}
