return {
  -- 搜索
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      { "<leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "全局搜索" },
    },
  },

  -- 代码片段
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { "~/.config/nvim/snippets" }, -- 这里引入自己的
      })
    end,
  },
  -- 加入第三方代码片段
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
