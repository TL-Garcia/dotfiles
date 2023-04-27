vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Plugins
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  use 'vim-airline/vim-airline'
  use 'windwp/nvim-ts-autotag'

  -- COLOR SCHEMES
  use 'Mofiqul/dracula.nvim'
  use 'catppuccin/nvim'

  -- Navigation
  use 'junegunn/fzf'
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP  
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
end)
