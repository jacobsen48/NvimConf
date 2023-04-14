-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme monokai-pro")
if not status then
	print("Colorscheme not found!")
	return
end
