require 'nvim-treesitter.configs'.setup {
  ensure_installed = { 'javascript', 'typescript', 'python', 'cpp', 'c', 'lua', 'rust' },
  indent = { enable = true, disable = { 'python' } },
  highlight = { enable = true },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
