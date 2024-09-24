-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- == Examples of Overriding Plugins ==

  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "My (terrible) neovim config :)",
      }
      return opts
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup {
        background_colour = "#282828", -- Set a background color that suits your theme
      }
    end,
  },
}
