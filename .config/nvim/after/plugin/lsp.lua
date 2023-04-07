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
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})

lsp.on_attach(function(client, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end
    vim.keymap.set('n', keys, func, { noremap = true, silent = true, buffer = bufnr, desc = desc })
  end

  nmap('<leader>drn', vim.lsp.buf.rename, 'Rename')
  nmap('<leader>dca', vim.lsp.buf.code_action, 'Code action')
  nmap('<leader>dtd', vim.lsp.buf.type_definition, 'Type definition')
  nmap('<leader>dsd', vim.lsp.buf.signature_help, 'Signature documentation')

  nmap('<leader>dh', vim.lsp.buf.hover, 'Hover documentation')
  nmap('<leader>df', vim.lsp.buf.definition, 'Goto definition')
  nmap('<leader>dd', vim.diagnostic.open_float, 'Open diagnostics')
  nmap('<leader>dk', vim.diagnostic.goto_prev, 'Diagnostics prev')
  nmap('<leader>dj', vim.diagnostic.goto_next, 'Diagnostics next')
  nmap('<leader>di', vim.lsp.buf.implementation, 'Goto implementation')

end)

lsp.setup()
