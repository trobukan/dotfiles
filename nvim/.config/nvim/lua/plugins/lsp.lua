vim.lsp.config["lua_ls"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
				disable = { "undefined-global" },
			},
			runtime = {
				version = "LuaJIT",
			},
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
}

vim.lsp.enable({ "lua_ls", "gopls" })
