vim.keymap.set('n', '<F1>', ':noh<CR>', { desc = 'clear highlight after search', silent = true })
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

vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]], { desc = 'paste from clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'yank to clipboard' })

vim.keymap.set('n', '<leader>o', 'm`o<esc>``', { desc = 'add blank line below' })
vim.keymap.set('n', '<leader>O', 'm`O<esc>``', { desc = 'add blank line above' })
