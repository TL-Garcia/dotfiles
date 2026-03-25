require('lazy').setup {
  -- Plugins
  'jiangmiao/auto-pairs',
  'tpope/vim-surround',
  'vim-airline/vim-airline',
  'windwp/nvim-ts-autotag',

  -- COLOR SCHEMES
  'Mofiqul/dracula.nvim',
  'catppuccin/nvim',

  -- Navigation
  'junegunn/fzf',
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 45
        },
        renderer = {
          icons = {
            show = {
              git = false
            }
          }
        }
      })
    end
  },
  'ryanoasis/vim-devicons',
  'nvim-tree/nvim-web-devicons',

  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Git
  'tpope/vim-fugitive',

  -- LSP
  'alvan/vim-closetag',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'nvim-treesitter/nvim-treesitter',
  { 'neovim/nvim-lspconfig' },
  { 'VonHeikemen/lsp-zero.nvim' },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', -- Source for LSP completion
    }
  },
  'mfussenegger/nvim-jdtls',
  'stevearc/conform.nvim',
  'windwp/nvim-ts-autotag',
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  {
      'MeanderingProgrammer/render-markdown.nvim',
      dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
      ---@module 'render-markdown'
      ---@type render.md.UserConfig
      opts = {},
  },
  

  -- Debugging
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
}
