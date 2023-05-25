lvim.format_on_save = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "eslint_d", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" } },
  { name = "black" }
}
