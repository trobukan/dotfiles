local options = {
  formatters_by_ft = {
    go = { "prettier" },
    c = { "prettier" },
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    markdown = { "prettier" },
    go = { "gofumpt" },
    bash = { "beautysh" },
    sh = { "beautysh" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
