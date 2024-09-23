return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup {
      variant = "moon", -- Choose the 'moon' variant
      dark_variant = "moon", -- Specify dark variant
      disable_italics = false, -- Disable italics if you prefer
    }

    -- Set the colorscheme
    vim.cmd "colorscheme rose-pine"
  end,
}
