local conform = require("conform")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--Goto end and start of line
vim.keymap.set("n", "L", "$")
vim.keymap.set("v", "L", "$")
vim.keymap.set("n", "H", "^")
vim.keymap.set("v", "H", "^")

-- move between splits
vim.keymap.set({ "v", "n" }, "<down>", "<C-w><C-j>")
vim.keymap.set({ "v", "n" }, "<right>", "<C-w><C-l>")
vim.keymap.set({ "v", "n" }, "<left>", "<C-w><C-h>")
vim.keymap.set({ "v", "n" }, "<up>", "<C-w><C-k>")
vim.keymap.set({ "v", "n" }, "<down>", "<C-w><C-j>")


vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set({ "n", "v" }, "<leader>f", function()
    conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500
    })
end)
