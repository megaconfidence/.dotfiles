local cmp = require('cmp')
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'eslint',
  'lua_ls',
  'tsserver',
  'rust_analyzer',
})

--fix undefined global 'vim'
lsp.configure('lua_ls', {
  settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
})

--ensure <CR> confirms selection
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  }
})

lsp.on_attach(function(client, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { noremap = true, silent = true, buffer = bufnr, desc = desc })
  end

  nmap('<leader>lrn', vim.lsp.buf.rename, 'Rename')
  nmap('<leader>lca', vim.lsp.buf.code_action, 'Code action')
  nmap('<leader>ltd', vim.lsp.buf.type_definition, 'Type definition')
  nmap('<leader>lsd', vim.lsp.buf.signature_help, 'Signature documentation')

  nmap('<leader>mh', vim.lsp.buf.hover, 'Hover documentation')
  nmap('<leader>lf', vim.lsp.buf.definition, 'Goto definition')
  nmap('<leader>ld', vim.diagnostic.open_float, 'Open diagnostics')
  nmap('<leader>lk', vim.diagnostic.goto_prev, 'Diagnostics prev')
  nmap('<leader>lj', vim.diagnostic.goto_next, 'Diagnostics next')
  nmap('<leader>li', vim.lsp.buf.implementation, 'Goto implementation')
end)

lsp.setup()
