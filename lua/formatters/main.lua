local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "eslint_d", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" } },
  { command = "prettier", filetypes = { "typescript", "typescriptreact" } },
  { name = "black" },
  { command = "fixjson", filetypes = { "json" } },
  { command = "clang-format", filetypes = { "cs"} }
}
