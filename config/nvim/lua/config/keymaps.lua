-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Salir del modo insert con jk

vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Tambien funciona en modo visual
vim.keymap.set("v", "jj", "Esc", { desc = "Exit visual mode" })
vim.keymap.set("v", "jk", "Esc", { desc = "Exit visual mode" })

-- Y en modo terminal
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
