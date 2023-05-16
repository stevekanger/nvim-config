local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.ensure_installed({
  'lua_ls',
  'eslint',
  'tsserver',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
  lsp.buffer_autoformat()
end)

lsp.setup_nvim_cmp({
  select_behavior = 'insert'
})

cmp.setup({
  mapping = {
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
