if vim.g.neovide then
  vim.o.guifont = "SauceCodePro Nerd Font:h14:i"
  vim.g.neovide_scale_factor = 1.2

  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.95
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end

  vim.g.neovide_background_color = "#232335" .. alpha()
  vim.g.neovide_floating_blur_amount_x = 1.0
  vim.g.neovide_floating_blur_amount_y = 1.0
  vim.g.neovide_cursor_trail_size = 0.9
  vim.g.neovide_cursor_vfx_mode = "pixiedust"

  -- dynamic scale
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<D-=>", function()
    change_scale_factor(1.05)
  end)
  vim.keymap.set("n", "<D-->", function()
    change_scale_factor(1 / 1.05)
  end)
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  -- Allow clipboard copy paste in neovim
  vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
end
