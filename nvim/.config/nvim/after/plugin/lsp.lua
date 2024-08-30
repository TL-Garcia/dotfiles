local lsp = require('lsp-zero')

lsp.preset("recommended")

-- Keybindings
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  local opts = { buffer = bufnr }

  vim.keymap.set({ 'n', 'x' }, 'gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
  end, opts)
end)

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})

-- Mason (lsp management)
require("mason").setup()
require("mason-lspconfig").setup()

-- (Optional) Configure lua language server for neovim
local lspConfig = require('lspconfig')
lspConfig.lua_ls.setup(lsp.nvim_lua_ls())
lspConfig.jdtls.setup { cmd = { 'jdtls' } }

-- Config deno/tsserver based on project file
lspConfig.denols.setup {
  root_dir = lspConfig.util.root_pattern("deno.json")
}

lspConfig.tsserver.setup {
  root_dir = lspConfig.util.root_pattern('package.json'),
  single_file_support = false
}

lsp.setup()

-- Recognize files under /pipelines as Groovy for Jenkinsfile
vim.cmd [[
  autocmd BufRead,BufNewFile */pipelines/* set filetype=groovy
]]
