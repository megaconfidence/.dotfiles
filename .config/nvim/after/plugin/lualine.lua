require('lualine').setup({
    options = {
        theme = 'auto',
        component_separators = '',
        section_separators = '',
        icons_enabled = false,
    },
    sections = {
        lualine_x = {
            {
                'buffers',
                show_filename_only = true,
                hide_filename_extension = true,
                show_modified_status = false,
                mode = 4,
                max_length = vim.o.columns * 2 / 3,
            }
        }
    }
})
