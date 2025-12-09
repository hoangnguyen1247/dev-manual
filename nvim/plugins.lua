return {
  -- Essentials
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",

  -- File explorer
  { "nvim-tree/nvim-tree.lua", config = true },

  -- -- Colorscheme
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     integrations = {
  --       treesitter = true,
  --     },
  --   },
  --   config = function()
  --     -- vim.cmd("colorscheme catppuccin")
  --     vim.cmd.colorscheme "catppuccin"
  --   end
  -- },

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
  -- { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    'nvim-treesitter/nvim-treesitter',
    -- CRITICAL: Ensures all required parsers are installed or updated on startup
    build = ':TSUpdate',
    
    -- Configuration details passed to the setup function
    opts = {
        -- 1. Ensure Parsers are Installed
        -- Add 'go' here to guarantee it gets downloaded
        ensure_installed = {
            'lua',
            'vim',
            'vimdoc',
            'c',
            'cpp',
            'go', -- <-- Include Golang parser
            'html',
            'css',
            'javascript',
            'typescript',
            'json',
            'yaml',
            'markdown',
            'markdown_inline',
        },

        -- 2. Core Modules (The actual features you use)
        highlight = {
            enable = true, -- **Enables Treesitter-based highlighting**
            -- Optional: Function to disable for large files (improves performance)
            disable = function(lang, buf)
                local max_filesize = 500 * 1024 -- 500 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats then
                    return stats.size > max_filesize
                end
            end,
        },

        indent = {
            enable = true, -- Enables Treesitter-based indentation
        },

        -- 3. Optional, Recommended Modules
        -- You may need separate plugins for these features, but some people use these modules
        -- context_commentstring = { enable = true, },
        -- textobjects = { enable = true, },
    },
    
    -- This config function is for when you want to run custom logic
    config = function(_, opts)
        require('nvim-treesitter.configs').setup(opts)
        
        -- Optional: Setup treesitter-textobjects separately if you use it
        -- require('nvim-treesitter.configs').setup_textobjects {}
    end
  },

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
