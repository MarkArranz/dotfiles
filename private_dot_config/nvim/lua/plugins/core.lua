return {
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
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
		-- Can be removed once v2.0.0 is released:
		-- https://github.com/fredrikaverpil/neotest-golang/pull/387
		{
			"fredrikaverpil/neotest-golang",
			branch = "feat/treesitter-main",
		},
	},
}
