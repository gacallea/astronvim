return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",

  -- { "AstroNvim/astrocommunity", dev = true },
  -- https://github.com/AstroNvim/astrocommunity/blob/main/CONTRIBUTING.md
  -- https://www.conventionalcommits.org/

  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colors and UI/UX
  {
    import = "astrocommunity.colorscheme.catppuccin",
    opts = {
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
    },
  },
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.split-and-window.mini-map" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  -- languages support
  { import = "astrocommunity.pack.swift" },
  { import = "astrocommunity.pack.elm" },
  { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.markdown" },

  -- lsp + diagnostics + testing + debugging
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- editor and editing support
  { import = "astrocommunity.project.project-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.editing-support.nvim-devdocs" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- git
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.octo-nvim" },

  -- writing
  { import = "astrocommunity.note-taking.zk-nvim" },
}
