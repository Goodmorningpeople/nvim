return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      window = {
        width = 0.85, -- Adjust the window width in zen mode
        height = 0.85, -- Adjust the window height in zen mode
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false, -- Disable the ruler in zen mode
          showcmd = false, -- Disable the command in zen mode
        },
      },
    }

    -- Set keybinding to toggle Zen Mode
    vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", { noremap = true, silent = true })
  end,
}
