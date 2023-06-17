-- Lua:
-- For dark theme (neovim's default)
vim.o.background = 'dark'

local c = require('vscode.colors').get_colors()
require('vscode').setup({
  -- Enable italic comment
  italic_comments = true,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    vscBack = '#0d1117',
    vscTabCurrent = '#0d1117',
    vscTabOther = '#010409',
    vscTabOutside = "#141a24"
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
    StatusLine = { fg = c.vscFront, bg = '#010409' },
    StatusLineNC = { fg = c.transparent, bg = '#010409' },
    TabLineSel = { bg = '#010409' },
    TabLineFill = { bg = '#010409' },
    TelescopeNormal = { fg = c.vscFront, bg = '#010409' },
    NvimTreeNormal = { fg = c.vscFront, bg = '#0d1117' },
    NvimTreeRootFolder = { fg = c.vscFront, bg = '#0d1117' },
    NvimTreeCursorLine = { fg = c.vscFront, bg = '#161d27' },
    NvimOpenedFolderName = { fg = c.vscFront, bg = '#0d1117' },
    BufferLineIndicatorSelected = { bg = '#0d1117' },
    Pmenu = { bg = '#010409' },
    PmenuSel = { bg = '#090e13' },
    IndentBlanklineChar = { fg = "#141a24" },
    VertSplit = { fg = "#141a24" },
  }
})
require('vscode').load()
