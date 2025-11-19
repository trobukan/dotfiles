require("nvchad.configs.lspconfig").defaults()
local capabilities = require("blink-cmp").get_lsp_capabilities()

local servers = {
  jsonls = { capabilities = capabilities },
  clangd = { capabilities = capabilities },
  html = { capabilities = capabilities },
  cssls = { capabilities = capabilities },
  tsserver = { capabilities = capabilities },
  ts_ls = { capabilities = capabilities },
  eslint = { capabilities = capabilities },
  gopls = { capabilities = capabilities },
  tailwindcss = {
    capabilities = capabilities,
    settings = {
      tailwindCSS = {
        classAttributes = { "className", "class" },
        lint = {
          cssConflict = "warning",
          invalidApply = "error",
          invalidConfigPath = "error",
          invalidTailwindDirective = "error",
          invalidVariant = "error",
          recommendVariantOrder = "warning",
        },
        validate = true,
      },
    },
  },
  lua_ls = {
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
          path = {
            "lua/?.lua",
            "lua/?/init.lua",
          },
        },
        workspace = {
          library = {
            vim.fn.expand "$VIMRUNTIME/lua",
          },
          userThirdParty = { os.getenv "HOME" .. ".local/share/LuaAddons" },
          checkThirdParty = "Apply",
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  vim.lsp.enable(name)
  vim.lsp.config(name, opts)
end
