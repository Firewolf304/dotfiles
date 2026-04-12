-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Esc>f", "w", { desc = "Rigth word" })
vim.keymap.set("i", "<A-BS>", "<C-w>", { desc = "Delete word backwards" })
vim.keymap.set({ "n", "v", "o", "i" }, "<A-Right>", "w", { desc = "Forward word" })
vim.keymap.set({ "n", "v", "o", "i" }, "<A-Left>", "b", { desc = "Backward word" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Tab up" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Tab down" })
-- vim.keymap.set("i", "<^H>", "<^w>", { desc = "Delete word backwards" })
