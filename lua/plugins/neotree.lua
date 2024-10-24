
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                follow_current_file = true, -- Automatically update the tree when switching buffers
                hijack_netrw_behavior = "open_default", -- Open the file in NeoTree instead of netrw
                use_libuv_file_watcher = true, -- Update the tree when files change
                filtered_items = {
                    visible = true, -- Show hidden files
                },
            },
            buffers = {
                follow_current_file = true, -- Automatically update the tree when switching buffers
            },
            git_status = {
                window = {
                    position = "float", -- Position of the git status window
                },
            },
            default_component_configs = {
                indent = {
                    padding = 0, -- Padding for each indent level
                },
            },
        })
    end
}

