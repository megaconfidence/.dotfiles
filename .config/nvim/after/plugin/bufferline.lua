require('bufferline').setup {
    options = {
        numbers = 'buffer_id',
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        separator_style = 'thin',

    }
}
vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>',
    { desc = 'Pick duffer', silent = true, noremap = true })
vim.keymap.set('n', '<leader>bd', ':BufferLinePickClose<CR>',
    { desc = 'Pick duffer to delete', silent = true, noremap = true })
vim.keymap.set('n', '<leader>bn', ':BufferLineCycleNext<CR>',
    { desc = 'Next buffer', silent = true, noremap = true })
vim.keymap.set('n', '<leader>bp', ':BufferLineCyclePrev<CR>',
    { desc = 'Previous buffer', silent = true, noremap = true })
