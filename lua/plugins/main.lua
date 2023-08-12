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
  }
}



require('swenv').setup({
  post_set_env = function()
    vim.cmd("LspRestart")
  end,
})

require'colorizer'.setup()
