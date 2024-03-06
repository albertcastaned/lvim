lvim.plugins = {
  { 'folke/tokyonight.nvim' },
  { 'hiphish/rainbow-delimiters.nvim' },
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
  },
	{
		"jackMort/ChatGPT.nvim",
			config = function()
				require("chatgpt").setup()
			end,
			dependencies = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim"
			}
	},
  {
    "wakatime/vim-wakatime",
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

lvim.builtin.treesitter.rainbow.enable = true

