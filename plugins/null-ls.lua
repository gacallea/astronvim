return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- disable prettierd for these filestypes
      null_ls.builtins.formatting.prettierd.with {
        disabled_filetypes = {
          "markdown",
          "typescript",
          "javascript",
          "tsx",
        },
      },

      -- disable Apple's Swift Format for swift files
      -- null_ls.builtins.formatting.swift_format.with {
      --   disabled_filetypes = {
      --     "swift",
      --   },
      -- },

      -- Set a formatter
      null_ls.builtins.formatting.standardjs,
      null_ls.builtins.formatting.standardts,
      null_ls.builtins.formatting.swiftformat, -- https://github.com/nicklockwood/SwiftFormat
      -- null_ls.builtins.formatting.swift_format, -- https://github.com/apple/swift-format

      -- Set a linter
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.standardjs,
      null_ls.builtins.diagnostics.swiftlint,
    }
    return config -- return final config table
  end,
}
