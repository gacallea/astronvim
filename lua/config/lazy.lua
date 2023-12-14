local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.g.astronvim_first_install = true -- lets AstroNvim know that this is an initial installation
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- TODO: set to true on release
-- Whether or not to use stable releases of AstroNvim
local USE_STABLE = false

require("lazy").setup {
  spec = {
    -- TODO: remove branch v4 on release
    { "AstroNvim/AstroNvim", branch = "v4", version = USE_STABLE and "^4" or nil, import = "astronvim.plugins" },
    -- pin plugins to known working versions
    { import = "astronvim.lazy_snapshot", cond = USE_STABLE },
    -- AstroCommunity: import any community modules here
    -- TODO: Remove branch v4 on release
    { "AstroNvim/astrocommunity", branch = "v4" },
    -- { "AstroNvim/astrocommunity", branch = "v4", dev = true },

    -- colors and UI/UX
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.utility.noice-nvim" },
    -- { import = "astrocommunity.split-and-window.edgy-nvim" },
    -- { import = "astrocommunity.split-and-window.mini-map" },
    -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },

    -- languages support
    -- { import = "astrocommunity.pack.swift" },
    -- { import = "astrocommunity.pack.elm" },
    -- { import = "astrocommunity.pack.haskell" },
    -- { import = "astrocommunity.pack.lua" },
    -- { import = "astrocommunity.pack.bash" },
    -- { import = "astrocommunity.pack.json" },
    -- { import = "astrocommunity.pack.yaml" },
    -- { import = "astrocommunity.pack.toml" },
    -- { import = "astrocommunity.pack.html-css" },
    -- { import = "astrocommunity.pack.tailwindcss" },
    { import = "astrocommunity.pack.markdown" },

    -- lsp + diagnostics + testing + debugging
    -- { import = "astrocommunity.diagnostics.trouble-nvim" },

    -- editor and editing support
    -- { import = "astrocommunity.project.project-nvim" },
    -- { import = "astrocommunity.project.nvim-spectre" },
    -- { import = "astrocommunity.editing-support.nvim-devdocs" },
    -- { import = "astrocommunity.editing-support.todo-comments-nvim" },
    -- { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
    -- { import = "astrocommunity.register.nvim-neoclip-lua" },
    -- { import = "astrocommunity.markdown-and-latex.glow-nvim" },
    --
    -- git
    -- { import = "astrocommunity.git.diffview-nvim" },
    -- { import = "astrocommunity.git.blame-nvim" },
    -- { import = "astrocommunity.git.octo-nvim" },
    -- { import = "astrocommunity.git.gitlinker-nvim" },
    -- { import = "astrocommunity.git.gist-nvim" },
    --
    -- writing
    -- { import = "astrocommunity.note-taking.zk-nvim" },

    -- import/override with your plugins
    { import = "plugins" },
  },
  install = { colorscheme = { "astrodark", "habamax" } },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
}
