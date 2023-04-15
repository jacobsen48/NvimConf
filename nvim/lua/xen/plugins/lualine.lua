local lualine_monokaipro = require("lualine.themes.monokai-pro")

local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

lualine_monokaipro.normal.a.bg = new_colors.blue
lualine_monokaipro.insert.a.bg = new_colors.green
lualine_monokaipro.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

require('lualine').setup({
	options = {
		theme = lualine_monokaipro,
	},
})
