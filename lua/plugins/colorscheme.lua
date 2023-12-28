return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      transparent_background = true,
    },
    config = function()
      require("catppuccin").setup({
        neotree = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
      })
    end,
  },
  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   branch = "osaka",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --     }
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
