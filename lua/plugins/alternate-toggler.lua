return {
  "rmagatti/alternate-toggler",
  event = { "BufReadPost" }, -- lazy load after reading a buffer
  config = function()
    require("alternate-toggler").setup({
      alternates = {
        ["=="] = "!=",
      },
    })
  end,
  keys = {
    {
      "<leader>cb",
      "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>",
      mode = { "n" },
      desc = "toggle boolean",
    },
  },
}
