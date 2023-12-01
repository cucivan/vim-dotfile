vim.opt.termguicolors = true

require("bufferline").setup{
    options = {
	    numbers = "buffdr_id",
            close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
            right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
            left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
            middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"
            buffer_close_icon = '󰅖',
            modified_icon = '●',
            close_icon = '',
            left_trunc_marker = '',
            right_trunc_marker = '',
            max_name_length = 18,
            max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
            truncate_names = true, -- whether or not tab names should be truncated
            diagnostics = false,
        hover = {
            enabled = true,
            delay = 150,
            reveal = {'close'}
        },
	    always_show_bufferline = true,
            color_icons = true,
	    tab_size = 25,
	    show_buffer_icons = true,
	    show_buffer_indicators = true,
	    persist_buffer_sort = true,
	    separator_style = "slant",
	    always_show_bufferline = true,
    }
}
