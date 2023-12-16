-- This file is automatically ran last in the setup process and is a good place to configure
-- augroups/autocommands and custom filetypes also this just pure lua so
-- anything that doesn't fit in the normal config locations above can go here

-- autoopen mini-map
vim.api.nvim_create_augroup("autoopenminimap", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter", "Filetype" }, {
  desc = "Open mini.map and exclude some filetypes",
  pattern = { "*" },
  group = "autoopenminimap",
  callback = function()
    local exclude_ft = {
      "qf",
      "aerial",
      "neo-tree",
      "toggleterm",
      "TelescopePrompt",
      "alpha",
      "netrw",
      "trouble",
    }

    local map = require "mini.map"
    if vim.tbl_contains(exclude_ft, vim.o.filetype) then
      map.close()
    elseif vim.o.buftype == "" then
      map.open()
    end
  end,
})

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
