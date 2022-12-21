vim.opt.cursorline = true
--line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

--tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

--search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.termguicolors = true

--move page with scroll
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.colorcolumn = '80'

vim.g.mapleader = ' '

--spellchecker
vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    { pattern = { "*.txt", "*.md" }, command = "setlocal spell" }
)
