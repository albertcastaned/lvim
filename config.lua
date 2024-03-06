-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

vim.cmd(":set nofixendofline")

require('core.theme')       -- Main style used

require('core.gitsigns')    -- Cofiguration for LVIM builtin gitsigns
require('core.lualine')     -- Configuration for Lualine builtin
require('core.bufferline')  -- Configuration for Bufferline builtin

require('core.treesitter')  -- Configuration for treesitter
-- Keybinds configuration
require('keys.main')        -- Keys for built-in features
require('keys.locals')      -- Keys that are not tracked by Git, for specific device purposes

require('plugins.main')     -- Definition of additional plugins
require('linters.main')     -- Definition of linters used
require('formatters.main')  -- Definition of formatters used

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require'lspconfig'.gdscript.setup{
  flags = lsp_flags,
  filetypes = { "gd", "gdscript", "gdscript3" },
}

-- vim.o.expandtab = false
