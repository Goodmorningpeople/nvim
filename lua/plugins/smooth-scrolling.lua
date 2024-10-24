return {
        "terryma/vim-smooth-scroll",
        config = function()
            -- Enable smooth scrolling
            vim.g.smooth_scroll_enable = 1

            -- Set the scroll speed (lower is faster)
            vim.g.smooth_scroll_speed = 1

            -- Enable smooth scrolling for Ctrl-D and Ctrl-U
            vim.api.nvim_set_keymap('n', '<C-D>', '<Plug>(smooth-scroll-down)', { noremap = false, silent = true })
            vim.api.nvim_set_keymap('n', '<C-U>', '<Plug>(smooth-scroll-up)', { noremap = false, silent = true })

            -- Optional: Enable smooth scrolling for <C-E> and <C-Y>
            vim.api.nvim_set_keymap('n', '<C-E>', '<Plug>(smooth-scroll-down-1)', { noremap = false, silent = true })
            vim.api.nvim_set_keymap('n', '<C-Y>', '<Plug>(smooth-scroll-up-1)', { noremap = false, silent = true })
        end
    }
