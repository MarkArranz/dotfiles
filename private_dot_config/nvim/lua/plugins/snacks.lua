return {
	"folke/snacks.nvim",
	opts = {
		picker = {
			sources = {
				explorer = {
					hidden = true,
					ignored = true,
					exclude = { ".git" },
				},
			},
			hidden = true,
			ignored = true,
			exclude = { ".git" },
		},
	},
}
