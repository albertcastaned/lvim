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
