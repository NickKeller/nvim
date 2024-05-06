-- local null_ls = require("null-ls")
-- local gofumpt_formatter = require('custom.formatters.gofumpt-formatter')
local goimports_reviser_formatter = require('custom.formatters.goimports-reviser-formatter')
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    -- gofumpt_formatter,
    goimports_reviser_formatter,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
return opts
