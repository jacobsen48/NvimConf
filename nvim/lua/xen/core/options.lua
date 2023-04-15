local opt = vim.opt -- for conciseness

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

opt.signcolumn = "yes"
-- local opt = vim.opt -- for conciseness
-- 
-- -- line numbers
-- opt.relativenumber = true
-- opt.number = true
-- 
-- -- tabs & indentation
-- opt.tabstop = 2
-- opt.shiftwidth = 2
-- opt.expandtab = true
-- opt.autoindent = true
-- 
-- -- line wrap
-- opt.wrap = false
-- 
-- -- search settings
-- opt.ignorecase = true
-- opt.smartcase = true
-- 
-- -- cursor line
-- opt.cursorline = false
-- 
-- -- appearance
-- opt.termguicolors = true
-- opt.background = "dark"
-- opt.signcolumn = "yes"
-- 
-- -- backspace
-- opt.backspace = "indent,eol,start"
-- 
-- -- clipboard
-- opt.clipboard:append("unnamedplus")
-- 
-- -- split windows
-- opt.splitright = true
-- opt.splitbelow = true
-- 
-- opt.iskeyword:append("-")
-- 
