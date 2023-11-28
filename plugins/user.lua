return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax

  -- [[ UI/UX ]]
  -- {
  --   "echasnovski/mini.map",
  --   version = "*",
  --   event = { "BufEnter" },
  --   -- cmd = {
  --   --   "MiniMap.open()",
  --   --   "MiniMap.close()",
  --   --   "MiniMaps.refresh()",
  --   --   "MiniMap.toggle()",
  --   --   "MiniMap.toggle_side()",
  --   --   "MiniMap.toggle_focus()",
  --   -- },
  --   keys = {
  --     { "<leader>um", "<cmd>MiniMap.toggle<CR>", desc = "Toggle minimap", mode = { "n" } },
  --   },
  --   config = function()
  --     require("mini.map").setup()
  --     local map = require "mini.map"
  --     map.setup {
  --       integrations = {
  --         map.gen_integration.builtin_search(),
  --         map.gen_integration.diagnostic {
  --           error = "DiagnosticFloatingError",
  --           warn = "DiagnosticFloatingWarn",
  --           info = "DiagnosticFloatingInfo",
  --           hint = "DiagnosticFloatingHint",
  --         },
  --       },
  --       symbols = {
  --         encode = map.gen_encode_symbols.dot "4x2",
  --       },
  --       window = {
  --         side = "right",
  --         width = 25,
  --         winblend = 15,
  --         show_integration_count = false,
  --       },
  --     }
  --   end,
  -- },

  -- [[ GIT ]]
  {
    "linrongbin16/gitlinker.nvim",
    event = "BufRead",
    keys = {
      { "<leader>gy", "<cmd>GitLink<CR>", desc = "Git link copy", mode = { "n", "v" } },
      { "<leader>gz", "<cmd>GitLink!<CR>", desc = "Git link open", mode = { "n", "v" } },
    },
    opts = {},
  },
}
