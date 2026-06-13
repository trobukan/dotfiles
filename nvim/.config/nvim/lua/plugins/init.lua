local gh = function(x)
	return "https://github.com/" .. x
end

vim.pack.add({
	gh("neovim/nvim-lspconfig"),
	gh("nvim-mini/mini.nvim"),
	gh("stevearc/conform.nvim"),
	gh("mason-org/mason.nvim"),
	gh("ingur/floatty.nvim"),
	gh("romus204/tree-sitter-manager.nvim"),

	-- Golang
	gh("romus204/go-tagger.nvim"),
})

require("go-tagger").setup({
	skip_private = true,
	casing = "snake_case",
	tags = {},
})

require("mason").setup({})
require("tree-sitter-manager").setup({
	ensure_installed = {
		"html",
		"go",
		"gomod",
		"gotmpl",
		"css",
	},
})

require("plugins.lsp")
require("plugins.conform")

local Plugins = {}
Plugins.floatty = require("floatty").setup({})
Plugins.mini = require("plugins.mini")
return Plugins
