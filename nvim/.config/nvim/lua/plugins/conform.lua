require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = {
			"goimports",
			"gofumpt",
			"golines",
		},
		json = { "biome" },
		javascript = { "biome" },
		typescript = { "biome" },
		c = { "clangd" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
