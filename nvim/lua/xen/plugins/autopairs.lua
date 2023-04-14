local autopairs_setup, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_setup then
	return
end

autopairs.setup({
	check_ts = true, -- enable treesitter
	ts_config = {
		lua = { "string" }, -- don't add pairs in lua string treesitter nodes
		javascript = { "template_string" }, -- don't add pairs in javascript template_string
		java = false, -- don't check treesitter on java
	},
})

-- import nvim-autopairs completition functionality safely
local cmp_autopairs_setup, cmp = pcall(require, "nvim-autpairs.completion.cmp")
if not cmp_autopairs_setup then
	return
end

-- import nvim_cmd plugin safely (completitions plugin)
local cmp_setup, cmp = pcall(require, "cmp")
if not cmp_setup then
	return
end

-- make autopairs and completition work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

