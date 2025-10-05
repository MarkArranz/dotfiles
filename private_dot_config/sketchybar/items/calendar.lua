local colors = require("colors")
local settings = require("settings")

local cal = sbar.add("item", "datetime", {
	icon = {
		color = colors.white,
		padding_left = 12,
	},
	label = {
		color = colors.white,
		padding_left = 6,
		padding_right = 12,
		align = "right",
		font = { family = settings.font.numbers },
	},
	position = "right",
	update_freq = 30,
	background = {
		color = colors.bg1,
	},
})

cal:subscribe({ "forced", "routine", "system_woke" }, function()
	cal:set({ icon = os.date("􀉉 %a, %b %d"), label = os.date("􀐫 %I:%M %p") })
end)
