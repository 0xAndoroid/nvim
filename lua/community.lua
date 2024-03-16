-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- TODO: Remove branch v4 on release
  { "AstroNvim/astrocommunity", branch = "v4" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    opts = {
      messages = {
        view = false,
      },
      lsp = {
        hover = {
          -- silent = true,
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  { import = "astrocommunity.completion.copilot-lua" },
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        debounce = 10,
        keymap = {
          accept = "<C-t>",
          accept_word = "<C-l>",
          accept_line = "<C-j>",
          next = "<C-q>",
          prev = "<C-;>",
          dismiss = "<C-c>",
        },
      },
      panel = {
        auto_refresh = true,
        keymap = {
          jump_next = "]]",
          jump_prev = "[[",
        },
      },
    },
  },
  { import = "astrocommunity.programming-language-support.csv-vim" },
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "100",
      custom_colorcolumn = {
        typescriptreact = "120",
      },
    },
  },
}
