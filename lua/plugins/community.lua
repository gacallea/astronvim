return {
  -- Add community imports to the `lua/config/lazy.lua` file in your Neovim configuration folder (typically ~/.config/nvim)
  -- this guarantees that the community plugin specs are loaded before the user configuration

  -- This is a good place to do further customize the options set by the community plugins/packs
  -- {
  --   "folke/edgy.nvim",
  --   opts = {
  --     exit_when_last = true,
  --     animate = {
  --       enabled = false,
  --     },
  --     bottom = {
  --       { ft = "qf", title = "QuickFix" },
  --       {
  --         ft = "help",
  --         size = { height = 20 },
  --         -- don't open help files in edgy that we're editing
  --         filter = function(buf) return vim.bo[buf].buftype == "help" end,
  --       },
  --     },
  --     left = {
  --       {
  --         title = "Files",
  --         ft = "neo-tree",
  --         filter = function(buf) return vim.b[buf].neo_tree_source == "filesystem" end,
  --         pinned = true,
  --         open = "Neotree position=left filesystem",
  --         size = { height = 0.5 },
  --       },
  --       "neo-tree",
  --       {
  --         ft = "aerial",
  --         title = "Symbol Outline",
  --         pinned = true,
  --         open = function() require("aerial").open() end,
  --       },
  --     },
  --   },
  -- },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
