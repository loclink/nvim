return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "css-lsp",
        "typescript-language-server",
        "vue-language-server",
      })
    end,
  },

  -- {
  --   "mfussenegger/nvim-lint",
  --   opts = {
  --     events = { "BufEnter", "BufWritePost", "BufReadPost", "InsertLeave" },
  --     linters_by_ft = {
  --       fish = { "fish" },
  --     },
  --   },
  -- },
  -- {
  --   "pmizio/typescript-tools.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  --   config = function()
  --     local api = require("typescript-tools.api")
  --     require("typescript-tools").setup({
  --       handlers = {
  --         ["textDocument/publishDiagnostics"] = api.filter_diagnostics({ 6133 }),
  --       },
  --       settings = {
  --         tsserver_file_preferences = {
  --           importModuleSpecifierPreference = "non-relative",
  --         },
  --       },
  --     })
  --   end,
  -- },
}
