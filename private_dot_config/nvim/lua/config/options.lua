-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Python Extras:
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"

vim.opt.colorcolumn = "+1"
vim.opt.formatoptions = "jcqlnt"

-- .gotmpl filetype
vim.filetype.add({
	extension = {
		gotmpl = "gotmpl",
	},
})
