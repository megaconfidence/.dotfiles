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

lsp.on_attach(function(client, bufnr)
  --utility function to define mappings
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { noremap = true, silent = true, buffer = bufnr, desc = desc })
  end

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gl', vim.diagnostic.open_float, '')
  nmap('g[', vim.diagnostic.goto_prev, '')
  nmap('g]', vim.diagnostic.goto_next, '')
  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  --popup documentation
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
end)

lsp.setup()
