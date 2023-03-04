--moving highlighted visual blocks
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--maintain cursor position at middle of screen when page jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

--keep search terms in middle of page
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

--replace without loosing yank
vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

--yank/paste to/from clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+Y]])
vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+P]])

--esc remaps
vim.keymap.set({ 'i', 'v' }, 'kj', '<esc>')
vim.keymap.set('c', 'kj', '<C-C>') --command mode
