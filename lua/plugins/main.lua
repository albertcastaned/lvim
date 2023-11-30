lvim.plugins = {
  { 'folke/tokyonight.nvim' },
  { "mrjones2014/nvim-ts-rainbow" },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "ChristianChiarulli/swenv.nvim",
  },
  {
    "stevearc/dressing.nvim",
  },
  {
    "norcalli/nvim-colorizer.lua"
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
  },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    config = function ()
      require("tailwindcss-colors").setup()
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize"}
      })
    end
  }
}



require('swenv').setup({
  post_set_env = function()
    vim.cmd("LspRestart")
  end,
})

require'colorizer'.setup()

lvim.builtin.cmp.formatting = {
  format = require("tailwindcss-colorizer-cmp").formatter
}

local nvim_lsp = require("lspconfig")
local on_attach = function(client, bufnr)
  -- other stuff --
  require("tailwindcss-colors").buf_attach(bufnr)
end

nvim_lsp["tailwindcss"].setup({
  -- other settings --
  on_attach = on_attach,
})

require 'colorizer'.setup()

