return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup {
      lsp = {
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
      -- other configurations...
    }
  end,
}
