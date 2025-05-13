local conform = require("conform")

local js_formatters = { "biome", "prettier", stop_after_first = true };

conform.setup({
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = "never",
  },
  formatters_by_ft = {
    lua = { "stylua" },
    css = js_formatters,
    javascript = js_formatters,
    javascriptreact = js_formatters,
    typescript = js_formatters,
    typescriptreact = js_formatters,
  },
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end)
