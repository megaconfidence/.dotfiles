vim.opt.termguicolors = true
vim.opt.cursorline = true
--line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

--tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

--search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true


--move page with scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'

--disable mouse
vim.opt.mouse = ''

--leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--save undo history
vim.o.undofile = true

--spellchecker & completion
vim.api.nvim_create_autocmd(
  { 'BufRead', 'BufNewFile' },
  { pattern = { '*.txt', '*.md' }, command = 'setlocal spell' }
)
vim.o.completeopt = 'menuone,noselect'

--msc stuff
vim.o.updatetime = 250 --used by extensions
vim.wo.signcolumn = 'yes'
vim.opt.termguicolors = true

--highlihgt on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
