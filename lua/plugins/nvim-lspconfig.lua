return {
  -- Install lspconfig and other required plugins
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.rust_analyzer.setup {} -- Rust
    end,
  },

  -- Additional plugins can be added here
  { 'hrsh7th/nvim-cmp' }, -- Completion plugin
  { 'hrsh7th/cmp-nvim-lsp' }, -- LSP source for nvim-cmp
  { 'hrsh7th/cmp-buffer' }, -- Buffer completions
  { 'hrsh7th/cmp-path' }, -- Path completions
}
