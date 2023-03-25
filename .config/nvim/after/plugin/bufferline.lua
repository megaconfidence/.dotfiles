require('bufferline').setup {
  options = {
    numbers = 'buffer_id',
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    separator_style = 'thin',
    custom_filter = function(buf_number, buf_numbers)
      --hide netrw filetype
      if vim.bo[buf_number].filetype~= '' then
        return true
      end
    end,
  }
}
vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>',
  { desc = 'Pick duffer', silent = true })
vim.keymap.set('n', '<leader>bd', ':BufferLinePickClose<CR>',
  { desc = 'Pick duffer to delete', silent = true })
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>',
  { desc = 'Next buffer', silent = true })
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>',
  { desc = 'Previous buffer', silent = true })
