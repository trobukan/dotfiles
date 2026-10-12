local path_package = vim.fn.stdpath("data") .. "/site/"
local mini_path = path_package .. "pack/deps/start/mini.nvim"

-- > | BootStrap
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/nvim-mini/mini.nvim",
		mini_path,
	}
	vim.fn.system(clone_cmd)
	vim.cmd("packadd mini.nvim | helptags ALL")
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- > | Start mini.deps
local MiniDeps = require("mini.deps")
MiniDeps.setup({ path = { package = path_package } })

local add = MiniDeps.add

-- > | Plugins
add({ source = "kvrohit/rasmus.nvim", name = "rasmus" })
add({ source = "neovim/nvim-lspconfig" })
add({ source = "stevearc/conform.nvim" })
add({ source = "mason-org/mason.nvim" })
add({ source = "ingur/floatty.nvim" })
add({ source = "romus204/tree-sitter-manager.nvim" })

add({ source = "romus204/go-tagger.nvim" })

-- > | Plugins Config
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
require("config.theme")

return {
	floatty = require("floatty").setup({}),
	mini = require("plugins.mini"),
}
