return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {
      enabled = true, -- Enable auto-save
      execution_message = nil, -- Disable message display
      events = { "InsertLeave" }, -- Trigger auto-save when leaving insert mode
      conditions = {
        exists = true, -- Save only if the file exists
        filename_is_not = {}, -- List of filenames to exclude from auto-save
        filetype_is_not = {}, -- List of filetypes to exclude from auto-save
        modifiable = true, -- Save only if the file is modifiable
      },
      write_all_buffers = false, -- Save only the current buffer
      on_off_commands = true, -- Enable commands to toggle auto-save
    }
  end,
}
