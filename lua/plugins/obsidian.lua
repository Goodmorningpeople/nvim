return {
  "epwalsh/obsidian.nvim",
  config = function()
    require("obsidian").setup {
      dir = "~/Documents/Obsidian Vault/",
    }
  end,
}
