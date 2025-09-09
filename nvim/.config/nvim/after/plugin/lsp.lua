vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Could be '●', '▎', 'x'
    spacing = 4,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- Keybindings
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({ 'n', 'x' }, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end,
})

-- Completion engine
local cmp = require('cmp')

cmp.setup({
  sources = {
    {
      name = 'nvim_lsp'
    },
    {
      name = 'buffer',
      option = {
        keyword_pattern = [[\k\+]],
      }
    },
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
})


-- Mason (lsp management)
require("mason").setup({
  path = "append"
})
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'tailwindcss',
    'ts_ls',
    'clangd'
  }
})

-- Configure lua language server for neovim
local lspConfig = require('lspconfig')
vim.lsp.config('lua_ls', {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
          path ~= vim.fn.stdpath('config')
          and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths
          -- here.
          -- '${3rd}/luv/library'
          -- '${3rd}/busted/library'
        }
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = {
        --   vim.api.nvim_get_runtime_file('', true),
        -- }
      }
    })
  end,
  settings = {
    Lua = {}
  }
})

-- Clang
lspConfig.clangd.setup({
  cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
  init_options = {
    fallbackFlags = { '-std=c++17' },
  },
})

-- Config deno/tsserver based on project file
lspConfig.denols.setup {
  root_dir = lspConfig.util.root_pattern("deno.json")
}

lspConfig.ts_ls.setup {
  root_dir = lspConfig.util.root_pattern('package.json'),
  single_file_support = false
}


-- Recognize files under /pipelines as Groovy for Jenkinsfile
vim.cmd [[
  autocmd BufRead,BufNewFile */pipelines/* set filetype=groovy
]]

-- Autotag
require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true,          -- Auto close tags
    enable_rename = true,         -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
})

