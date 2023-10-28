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
  'nvim-treesitter/nvim-treesitter';
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
}

