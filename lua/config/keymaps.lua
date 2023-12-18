-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("v", "J", ":move '>+1<CR>gv-gv", { desc = "下移一行", noremap = true, silent = true })
map("v", "K", ":move '<-2<CR>gv-gv", { desc = "上移一行", noremap = true, silent = true })
