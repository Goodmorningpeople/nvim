return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup {
      enable = true, -- Enable transparent background
      extra_groups = { -- List of additional groups to make transparent
        "Normal",
        "NormalNC",
        "SignColumn",
        "EndOfBuffer",
      },
      exclude_groups = {}, -- List groups to exclude from transparency
    }

    -- Optional: Set transparency level (0 to 100)
    vim.cmd "hi Normal guibg=NONE ctermbg=NONE"
  end,
}
