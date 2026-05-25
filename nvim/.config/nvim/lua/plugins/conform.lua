require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = {
			"goimports",
			"gofumpt",
			"golines",
		},
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
