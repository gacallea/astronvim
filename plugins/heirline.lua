return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"

      opts.statusline = { -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode(),
        status.component.git_branch(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        status.component.treesitter(),
        status.component.nav(),
        status.component.builder {
          {
            provider = function() return " " .. os.date "%I:%M:%S %p" end,
            update = {
              "User",
              pattern = "UpdateTime",
              callback = vim.schedule_wrap(function() vim.cmd.redrawstatus() end),
            },
          },
          surround = { separator = "right", color = "bg" },
        },
        status.component.mode { surround = { separator = "right" } },
      }

      -- return the final configuration table
      return opts
    end,
  },
}
