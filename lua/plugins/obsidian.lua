return {
  "epwalsh/obsidian.nvim",
  config = function()
    require("obsidian").setup {
      dir = "~/Documents/markdown_notes/",
      ui = { enable = false },
    }
  end,
}
