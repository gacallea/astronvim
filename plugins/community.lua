return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- { "AstroNvim/astrocommunity", dev = true },
  -- https://github.com/AstroNvim/astrocommunity/blob/main/CONTRIBUTING.md
  -- https://www.conventionalcommits.org/

  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colors and UI/UX
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.color.ccc-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },

  -- languages support
  -- { import = "astrocommunity.pack.swift" }, -- https://github.com/AstroNvim/astrocommunity/pull/656
  -- { import = "astrocommunity.pack.elm" }, -- https://github.com/AstroNvim/astrocommunity/pull/653
  { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.tailwindcss" },

  -- lsp + diagnostics + testing + debugging
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- editor and editing supprt
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
  -- { import = "astrocommunity.note-taking.zk-nvim" }, -- https://github.com/AstroNvim/astrocommunity/pull/654
}
