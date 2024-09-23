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
      on_open = function(win)
        -- Save the current font size
        vim.g.old_font_size = vim.opt.guifont:get()[1]
        -- Set a large font size
        vim.opt.guifont = "FiraCode Nerd Font:h24"
        -- Adjust Alacritty font size
        os.execute 'echo -e "\\e]710;FiraCode Nerd Font:h24\\a"'
      end,
      on_close = function()
        -- Restore the original font size
        vim.opt.guifont = vim.g.old_font_size
        -- Restore Alacritty font size
        os.execute 'echo -e "\\e]710;FiraCode Nerd Font:h12\\a"'
      end,
    }
    -- Set the key binding for toggling Zen mode
    vim.api.nvim_set_keymap("n", "<leader>zz", ":ZenMode<CR>", { noremap = true, silent = true })
  end,
}
