return {
  -- Essentials
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",

  -- File explorer
  { "nvim-tree/nvim-tree.lua", config = true },

  -- Colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin")
    end
  },

  -- coc.nvim for navigation and rename symbols
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      -- Disable coc UI features
      vim.g.coc_global_extensions = {}
    end,
  },

  -- Telescope
  { "nvim-telescope/telescope.nvim", tag = "0.1.5" },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP + Mason
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Autocomplete
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "L3MON4D3/LuaSnip",
}
