return {
  "ahmedkhalf/project.nvim",
  opts = {
    -- can also delete or rearangne the detection methods.
    detection_methods = { "pattern" },
    patterns = { ".git", "Makefile", "*.sln", "build/env.sh" },
  },
  event = "VeryLazy",
  config = function(_, opts)
    require("project_nvim").setup(opts)
    require("lazyvim.util").on_load("telescope.nvim", function()
      require("telescope").load_extension("projects")
    end)
  end,
  keys = {
    { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Find Projects" },
  },
}
