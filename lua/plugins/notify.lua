return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup {
      stages = "fade",
      timeout = 2000,
      max_width = 60,
      -- Customize highlight groups
      render = "default",
      background_colour = "#000000", -- General background color
      icons = {
        ERROR = "✖",
        WARN = "⚠",
        INFO = "ℹ",
        DEBUG = "🐞",
        TRACE = "✎",
      },
    }
    -- Set custom colors for different notification levels
    vim.api.nvim_set_hl(0, "NotifyWARN", { bg = "#ffcc00", fg = "#000000" }) -- Warning background
    vim.api.nvim_set_hl(0, "NotifyERROR", { bg = "#ff0000", fg = "#ffffff" }) -- Error background
    vim.api.nvim_set_hl(0, "NotifyINFO", { bg = "#007acc", fg = "#ffffff" }) -- Info background

    -- Redirect vim notifications to nvim-notify
    vim.notify = require "notify"
  end,
}
