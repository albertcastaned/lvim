local linters = require "lvim.lsp.null-ls.linters"

linters.setup {
  {
    name = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    condition = function(utils)
        return utils.root_has_file({".eslintrc.js", ".eslintrc.json", ".eslintrc.cjs", ".eslintrc" })
    end,
  },
  -- { command = "flake8",   filetypes = { "python" } },
  { command = "jsonlint", filetypes = { "json" } }
}

