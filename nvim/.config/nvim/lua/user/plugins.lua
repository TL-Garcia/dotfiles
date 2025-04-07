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
  'preservim/nerdtree',
  'ryanoasis/vim-devicons',
  'tiagofumo/vim-nerdtree-syntax-highlight',
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
      'L3MON4D3/LuaSnip',         -- Snippet engine
      'saadparwaiz1/cmp_luasnip', -- Snippet engine adapter
      'hrsh7th/cmp-nvim-lsp',     -- Source for LSP completion
    }
  },
  'mfussenegger/nvim-jdtls',
  'stevearc/conform.nvim',
  'windwp/nvim-ts-autotag',
  'github/copilot.nvim',

  -- Debugging
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }
}
