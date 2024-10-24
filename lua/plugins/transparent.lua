return {
    'xiyaowong/transparent.nvim',
    config = function()
        require('transparent').setup({
            -- Enable transparency
            enable = true,
            -- Extra groups to clear (In addition to default groups)
            extra_groups = {
                'NvimTreeNormal',  -- Example: clear the background of NvimTree
                'TelescopeNormal', -- Example: clear the background of Telescope
                -- Add other groups as needed
            },
            -- Exclude certain groups from clearing
            exclude = {},
        })
    end
}
