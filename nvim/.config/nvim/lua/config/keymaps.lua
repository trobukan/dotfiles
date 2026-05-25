vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<Esc>", ":noh<CR>")

vim.keymap.set({ "n" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n" }, "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Write" })
vim.keymap.set("n", "<leader>q", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>", { desc = "Update" })

vim.keymap.set("n", "<leader>e", function()
	vim.cmd("lua MiniFiles.open()")
end, { desc = "Explorer" })

vim.keymap.set("n", "<C-/>", function()
	require("plugins").floatty.toggle()
end)

vim.keymap.set("t", "<C-/>", function()
	require("plugins").floatty.toggle()
end)

vim.keymap.set("n", "<leader>f", ":Pick files<CR>", { desc = "Search files" })
vim.keymap.set("n", "<leader>h", ":Pick help<CR>", { desc = "Help" })

vim.keymap.set("n", "<leader>bf", ":Pick buffers<CR>", { desc = "Search buffers" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
