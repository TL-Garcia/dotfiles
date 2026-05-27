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
  { 'neovim/nvim-lspconfig' },
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    branch = 'main'
  },
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
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
      ---@module 'render-markdown'
      ---@type render.md.UserConfig
      opts = {},
  },
  {
    "nickjvandyke/opencode.nvim",
    version = "*", -- Latest stable release
    dependencies = {
      {
        -- `snacks.nvim` integration is recommended, but optional
        ---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
        "folke/snacks.nvim",
        optional = true,
        opts = {
          input = {}, -- Enhances `ask()`
          picker = { -- Enhances `select()`
            actions = {
              opencode_send = function(...) return require("opencode").snacks_picker_send(...) end,
            },
            win = {
              input = {
                keys = {
                  ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any; goto definition on the type or field for details
      }

      vim.o.autoread = true -- Required for `opts.events.reload`

      -- Recommended/example keymaps
      vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
      vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end,                          { desc = "Execute opencode action…" })
      vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end,                          { desc = "Toggle opencode" })

      vim.keymap.set({ "n", "x" }, "go",  function() return require("opencode").operator("@this ") end,        { desc = "Add range to opencode", expr = true })
      vim.keymap.set("n",          "goo", function() return require("opencode").operator("@this ") .. "_" end, { desc = "Add line to opencode", expr = true })

      vim.keymap.set("n", "<S-C-u>", function() require("opencode").command("session.half.page.up") end,   { desc = "Scroll opencode up" })
      vim.keymap.set("n", "<S-C-d>", function() require("opencode").command("session.half.page.down") end, { desc = "Scroll opencode down" })

      -- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above — otherwise consider `<leader>o…` (and remove terminal mode from the `toggle` keymap)
      vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
      vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
    end,
  },
  

  -- Debugging
  'mfussenegger/nvim-dap',
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
}
