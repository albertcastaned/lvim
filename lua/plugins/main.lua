lvim.plugins = {
  { 'folke/tokyonight.nvim' },
  { "mrjones2014/nvim-ts-rainbow" },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
