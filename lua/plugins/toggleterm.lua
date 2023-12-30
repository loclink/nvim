-- 内置终端
return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-t>]],
      shade_terminals = false,
      shell = "zsh --login",
    })
  end,

  keys = {
    { [[<C-t>]] },
    { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    {
      "<leader>td",
      "<cmd>ToggleTerm size=40 dir=~/Desktop direction=horizontal<cr>",
      desc = "Open a horizontal terminal at the Desktop directory",
    },
  },
}
