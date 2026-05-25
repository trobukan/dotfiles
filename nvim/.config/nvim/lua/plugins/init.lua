local gh = function(x)
	return "https://github.com/" .. x
end

vim.pack.add({
	gh("neovim/nvim-lspconfig"),
	gh("nvim-mini/mini.nvim"),
	gh("stevearc/conform.nvim"),
	gh("mason-org/mason.nvim"),
})

require("mason").setup({})

require("plugins.lsp")
require("plugins.mini")
require("plugins.conform")
