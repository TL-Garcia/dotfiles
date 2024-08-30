require('lazy').setup{
  -- Plugins
  'jiangmiao/auto-pairs';
  'tpope/vim-surround';
  'vim-airline/vim-airline';
  'windwp/nvim-ts-autotag';

  -- COLOR SCHEMES
  'Mofiqul/dracula.nvim';
  'catppuccin/nvim';

  -- Navigation
  'junegunn/fzf';
  'preservim/nerdtree';
  'ryanoasis/vim-devicons';
  'tiagofumo/vim-nerdtree-syntax-highlight';
  'nvim-tree/nvim-web-devicons';

  {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  };

  -- Git
  'tpope/vim-fugitive';

  -- LSP  
  'alvan/vim-closetag';
  'saadparwaiz1/cmp_luasnip'; -- Snippets source for nvim-cmp;
  'williamboman/mason.nvim';
  'williamboman/mason-lspconfig.nvim';
  'nvim-treesitter/nvim-treesitter';
  {'neovim/nvim-lspconfig'},
  {'VonHeikemen/lsp-zero.nvim'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  'stevearc/conform.nvim'
}

