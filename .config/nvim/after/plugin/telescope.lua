-- pcall(require('telescope').load_extension, 'fzf')
local telescope = require('telescope')

telescope.load_extension('fzf')

local themes = require('telescope.themes')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions');

telescope.setup {
  defaults = {
    mappings = {
      i = {
        ['qq'] = actions.send_to_qflist + actions.open_qflist,
        ['qm'] = actions.send_selected_to_qflist + actions.open_qflist,
      },
      n = {
        ['qq'] = actions.send_to_qflist + actions.open_qflist,
        ['qm'] = actions.send_selected_to_qflist + actions.open_qflist,
        ['<Tab>'] = actions.toggle_selection + actions.move_selection_worse,
        ['<S-Tab>'] = actions.toggle_selection + actions.move_selection_better,
      },
    }
  },
}

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files(themes.get_dropdown({ previewer = false }))
end, { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fd', function()
  builtin.diagnostics(themes.get_dropdown({ previewer = false }))
end, { desc = '[F]ind [D]iagnostics' })

vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind cursor [W]ord' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = '[F]ind [R]ecent files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })

vim.keymap.set('n', '<leader>fb', function()
  builtin.buffers(themes.get_dropdown({ previewer = false }))
end, { desc = '[F]ind open [B]uffers' })

vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
vim.keymap.set('n', '<leader>fib', function()
  builtin.current_buffer_fuzzy_find(themes.get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = '[F]ind [I]n [B]uffer' })
-- vim.keymap.set('n', '<leader>fib', function()
--   require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, { desc = '[F]ind [I]n [B]uffer' })
