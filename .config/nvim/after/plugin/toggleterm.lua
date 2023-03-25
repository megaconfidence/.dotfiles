require("toggleterm").setup{
  direction = 'float',
  open_mapping = [[<c-\>]],
  float_opts = {
    border = 'curved',
  },
}

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
