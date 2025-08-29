return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
	-- Can remove when issue is merged: https://github.com/LazyVim/LazyVim/pull/6354
	{
		"akinsho/bufferline.nvim",
		init = function()
			local bufline = require("catppuccin.groups.integrations.bufferline")
			function bufline.get()
				return bufline.get_theme()
			end
		end,
	},
	-- Change date format to 12-hour AM/PM
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			sections = {
				lualine_z = {
					function()
						return " " .. os.date("%I:%M %p")
					end,
				},
			},
		},
	},
	-- disable mini.pairs
	{
		"echasnovski/mini.pairs",
		enabled = false,
	},
}
