-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ensure vim-kitty-navigator keymapping doesn't get overwritten:
if os.getenv("TERM") == "xterm-kitty" then
  vim.g.kitty_navigator_no_mappings = 1
  vim.g.tmux_navigator_no_mappings = 1

  vim.api.nvim_set_keymap(
    "n",
    "<C-h>",
    ":KittyNavigateLeft <CR>",
    { noremap = true, silent = true, desc = "KittyNavigateLeft" }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-j>",
    ":KittyNavigateDown <CR>",
    { noremap = true, silent = true, desc = "KittyNavigateDown" }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-k>",
    ":KittyNavigateUp <CR>",
    { noremap = true, silent = true, desc = "KittyNavigateUp" }
  )
  vim.api.nvim_set_keymap(
    "n",
    "<C-l>",
    ":KittyNavigateRight <CR>",
    { noremap = true, silent = true, desc = "KittyNavigateRight" }
  )
end
