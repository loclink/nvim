return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
      frequency = 50,
      damping = 50,
      render = "compact",
      stages = "slide",
    },
  },
}
