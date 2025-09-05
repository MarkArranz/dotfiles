return {
	{
		"catppuccin/nvim",
		opts = {
			dim_inactive = {
				enabled = true,
			},
			custom_highlights = function(colors)
				return {
					WinSeparator = { fg = colors.flamingo },
				}
			end,
		},
	},
}
