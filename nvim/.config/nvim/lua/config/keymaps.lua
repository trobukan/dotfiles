vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<Esc>", ":noh<CR>")

-- Navigation
vim.keymap.set({ "n" }, "<C-h>", "<C-w>h")
vim.keymap.set({ "n" }, "<C-j>", "<C-w>j")
vim.keymap.set({ "n" }, "<C-k>", "<C-w>k")
vim.keymap.set({ "n" }, "<C-l>", "<C-w>l")

-- Explorer
vim.keymap.set("n", "<leader>e", function()
	require("plugins").mini.files.open()
end, { desc = "Explorer" })

-- Terminal
vim.keymap.set("n", "<C-/>", function()
	require("plugins").floatty.toggle()
end)

vim.keymap.set("t", "<C-/>", function()
	require("plugins").floatty.toggle()
end)

-- Help
vim.keymap.set("n", "<leader>h", ":Pick help<CR>", { desc = "Help" })

-- Find
vim.keymap.set("n", "<leader>fb", ":Pick buffers<CR>", { desc = "Search buffers" })
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>", { desc = "Search files" })
vim.keymap.set("n", "<leader>fd", function()
	vim.diagnostic.setqflist({ open = true })
end)

-- Buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })
