return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax

  -- [[ UI/UX ]]
  {
    "echasnovski/mini.map",
    branch = "stable",
    config = function()
      require("mini.map").setup()
      local map = require "mini.map"
      map.setup {
        integrations = {
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic {
            error = "DiagnosticFloatingError",
            warn = "DiagnosticFloatingWarn",
            info = "DiagnosticFloatingInfo",
            hint = "DiagnosticFloatingHint",
          },
        },
        symbols = {
          encode = map.gen_encode_symbols.dot "4x2",
        },
        window = {
          side = "right",
          width = 25,
          winblend = 15,
          show_integration_count = false,
        },
      }
    end,
  },

  -- [[ GIT ]]
  {
    "mattn/vim-gist",
    dependencies = {
      "mattn/webapi-vim",
    },
    event = "BufRead",
    config = function()
      vim.cmd "let g:gist_clip_command = 'pbcopy'"
      vim.cmd "let g:gist_detect_filetype = 1"
      vim.cmd "let g:gist_open_browser_after_post = 1"
      vim.cmd "let g:gist_post_private = 1"
    end,
  },

  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = function()
      require("gitlinker").setup {
        opts = {
          add_current_line_on_normal_mode = true,
          action_callback = require("gitlinker.actions").copy_to_clipboard,
          print_url = false,
          mappings = nil,
        },
      }
    end,
    dependencies = "nvim-lua/plenary.nvim",
  },

  -- [[ UTILS ]]
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup {
        lastplace_ignore_buftype = {
          "quickfix",
          "nofile",
          "help",
        },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      }
    end,
  },
}
