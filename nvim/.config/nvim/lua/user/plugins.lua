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
      'hrsh7th/cmp-nvim-lsp', -- Source for LSP completion
    }
  },
  'mfussenegger/nvim-jdtls',
  'stevearc/conform.nvim',
  'windwp/nvim-ts-autotag',
  {
    "github/copilot.nvim",
    event = "InsertEnter",
    lazy = false,
    autoStart = true,
    build = ":Copilot auth",
    url = "git@github.com:github/copilot.vim.git",
    config = function()
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_enabled = false
      vim.keymap.set("n", "<leader>ai", function()
        vim.g.copilot_enabled = not vim.g.copilot_enabled
        if vim.g.copilot_enabled then
          print("Copilot enabled")
        else
          print("Copilot disabled")
        end
      end, { desc = "Toggle Copilot" })
      vim.api.nvim_set_keymap("i", "<C-L>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.g.copilot_no_tab_map = true
    end,
  },

  -- Debugging
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
}
