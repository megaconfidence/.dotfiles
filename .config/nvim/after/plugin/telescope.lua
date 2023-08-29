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
end, { desc = 'Find files' })

vim.keymap.set('n', '<leader>fb', function()
  builtin.buffers(themes.get_dropdown({ previewer = false }))
end, { desc = 'Find buffers' })

vim.keymap.set('n', '<leader>fd', function()
  builtin.diagnostics(themes.get_dropdown({ previewer = false, layout_config = { width = 0.8 } }))
end, { desc = 'Find diagnostics' })

vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find by grep' })

vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Find cursor string' })

vim.keymap.set('n', '<leader>fw', function()
  builtin.current_buffer_fuzzy_find(themes.get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = 'Find word in buffer' })

vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
