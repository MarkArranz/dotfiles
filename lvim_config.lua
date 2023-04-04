-- LunarVim Configuration File

-- General
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "dracula"
lvim.transparent_window = true

-- Key mappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- New keymappings
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- Unmap default keymappings
-- vim.keymap.del("n", "<C-Up>")

-- Override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Integrated Terminal Settings
lvim.builtin.terminal.persist_size = true

-- Which-Key bindings
-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
-- name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "jsonc",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Generic LSP settings
-- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black" },
  { command = "isort" },
  {
    command = "prettierd",
    extra_args = { "--print-width", "100" },
  },
}

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "mypy", filetypes = { "python" } },
  {
    command = "eslint_d",
    filetypes = {
      "javascript",
      "javascriptreact",
      "json",
      "jsonc",
      "tsx",
      "typescript",
      "typescriptreact",
    },
  },
}

-- Additional Plugins
lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "maxmx03/dracula.nvim",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local dracula = require('dracula')

      dracula.setup({})

      vim.cmd('colorscheme dracula')
    end
  },
  {
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
  }
}

-- Vim Options Overrides
vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2
vim.opt.conceallevel = 0
vim.opt.cursorline = true -- highlight the current line
vim.opt.expandtab = true  -- convert tabs to spaces
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.relativenumber = true
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.updatetime = 300    -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.shiftwidth = 2      -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2         -- insert 2 spaces for a tab
vim.opt.numberwidth = 4     -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"  -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = false        -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- is one of my fav
