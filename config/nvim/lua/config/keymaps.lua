-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- add easy neovim-tmux navigation
map(
  "n",
  "<C-h>",
  "<cmd>NvimTmuxNavigateLeft<cr>",
  { desc = "Go to left window", remap = false, silent = true }
)
map(
  "n",
  "<C-j>",
  "<cmd>NvimTmuxNavigateDown<cr>",
  { desc = "Go to lower window", remap = false, silent = true }
)
map(
  "n",
  "<C-k>",
  "<cmd>NvimTmuxNavigateUp<cr>",
  { desc = "Go to upper window", remap = false, silent = true }
)
map(
  "n",
  "<C-l>",
  "<cmd>NvimTmuxNavigateRight<cr>",
  { desc = "Go to right window", remap = false, silent = true }
)
map(
  "n",
  "<C-\\>",
  "<cmd>NvimTmuxNavigateLastActive<cr>",
  { desc = "Go to previous window", remap = false, silent = true }
)
