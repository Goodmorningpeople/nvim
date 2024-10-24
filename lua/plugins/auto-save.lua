  -- Add your other plugins here
return {
    'pocco81/auto-save.nvim',
    config = function()
      require('auto-save').setup({
        write_all_buffers = true
      })
    end,
  }
