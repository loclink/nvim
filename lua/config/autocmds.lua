-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", { clear = true })
local autocmd = vim.api.nvim_create_autocmd

-- autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })

-- 自动切换输入法
autocmd("InsertLeave", {
  group = myAutoGroup,
  callback = require("utils.im-select").macInsertLeave,
})
autocmd("InsertEnter", {
  group = myAutoGroup,
  callback = require("utils.im-select").macInsertEnter,
})

-- autocmd({ "BufWritePost" }, {
--   pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
--   group = myAutoGroup,
--   callback = function()
--     vim.cmd("TSToolsAddMissingImports")
--     -- userManagementDealer  vim.cmd("TSToolsOrganizeImports")
--   end,
-- })

-- json文件不隐藏双引号
autocmd({ "FileType" }, {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})
