require('actions-preview').setup()

vim.keymap.set({ 'v', 'n' }, '<leader>ca', require('actions-preview').code_actions, { desc = 'Open code actions' })
