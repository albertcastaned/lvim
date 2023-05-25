local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "eslint", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }},
  { name = "black" }
}
