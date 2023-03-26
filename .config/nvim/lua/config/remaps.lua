--moving highlighted visual blocks
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")

--maintain cursor position at middle of screen when page jumping
vim.keymap.set('n', '<c-d>', '<c-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')

--keep search terms in middle of page
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

--replace without loosing yank
vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d")

vim.keymap.set({ 'n', 'v' }, '<leader>p', [["+p]], { desc = 'Paste from clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to clipboard' })

vim.keymap.set('n', '<leader>o', 'm`o<esc>``', { desc = 'Add blank line below' })
vim.keymap.set('n', '<leader>O', 'm`O<esc>``', { desc = 'Add blank line above' })
