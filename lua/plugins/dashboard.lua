-- 用户起始页
return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[
██╗      ██████╗  ██████╗██╗     ██╗███╗   ██╗██╗  ██╗
██║     ██╔═══██╗██╔════╝██║     ██║████╗  ██║██║ ██╔╝
██║     ██║   ██║██║     ██║     ██║██╔██╗ ██║█████╔╝
██║     ██║   ██║██║     ██║     ██║██║╚██╗██║██╔═██╗
███████╗╚██████╔╝╚██████╗███████╗██║██║ ╚████║██║  ██╗
╚══════╝ ╚═════╝  ╚═════╝╚══════╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝

 ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"),
      -- stylua: ignore
        center = {
          { action = "Telescope projects",                                       desc = " Find Projects",    icon = " ", key = "p" },
          { action = "Telescope live_grep",                                      desc = " Find text",       icon = " ", key = "g" },
          { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',                        desc = " Restore Session", icon = " ", key = "s" },
          { action = "qa",                                                       desc = " Quit",            icon = " ", key = "q" },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return {
            "⚡ Neovim 加载完成 ("
              .. stats.loaded
              .. "/"
              .. stats.count
              .. ") 耗时:"
              .. ms
              .. "ms 击败了全球99.99%的程序员",
            "",
            "了解真相, 才能获得真正的自由",
          }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "DashboardLoaded",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    return opts
  end,
}
