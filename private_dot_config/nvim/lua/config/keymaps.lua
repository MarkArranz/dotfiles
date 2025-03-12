-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Ensure vim-kitty-navigator keymapping doesn't get overwritten:
if os.getenv("TERM") == "xterm-kitty" then
  vim.keymap.set(
    "n",
    "<c-h>",
    "<cmd>KittyNavigateLeft<cr>",
    { remap = false, silent = true, desc = "KittyNavigateLeft" }
  )
  vim.keymap.set(
    "n",
    "<c-j>",
    "<cmd>KittyNavigateDown<cr>",
    { remap = false, silent = true, desc = "KittyNavigateDown" }
  )
  vim.keymap.set("n", "<c-k>", "<cmd>KittyNavigateUp<cr>", { remap = false, silent = true, desc = "KittyNavigateUp" })
  vim.keymap.set(
    "n",
    "<c-l>",
    "<cmd>KittyNavigateRight<cr>",
    { remap = false, silent = true, desc = "KittyNavigateRight" }
  )
end
