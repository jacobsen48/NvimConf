vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- press jk to exit from insert mode
-- keymap.set("i", "jk", "<ESC>")
-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")


keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])


keymap.set({"n", "v"}, "<leader>d", [["_d]])



-- to remove highlight when you search something
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- this one don't save the character that you have just removed
keymap.set("n", "x", '"_x')

-- changing increment and decrement from ctrl(a and x) to "space"(+ and -)
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- to split the windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- to use tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose>CR") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- got to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- to go in explore mode
keymap.set("n", "<leader>b", vim.cmd.Ex)

-- PLUGIN KEYMAPS

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
-- keymap.set('n', '<leader>ff', builtin.live_grep, {})
-- keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- keymap.set('n', '<leader>fb', builtin.buffers, {})
-- keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set("n", "<leader>pf", builtin.find_files, {})
keymap.set("n", "<C-p>", builtin.git_files, {})
keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- toggleterm open & exit (from terminal mode)
keymap.set("n", "<leader>tt", ":ToggleTerm<CR>")
-- vim.keymap.set("t", "<C-è>", "<ESC>") bisogna capire come funziona

-- UndoTree
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Vim-fugitive (git integration)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

keymap.set("n", "<leader>a", mark.add_file)
keymap.set("n", "<C-e>", ui.toggle_quick_menu)

keymap.set("n", "<C-g>", function()
	ui.nav_file(1)
end)
keymap.set("n", "<C-t>", function()
	ui.nav_file(2)
end)
keymap.set("n", "<C-n>", function()
	ui.nav_file(3)
end)
keymap.set("n", "<C-s>", function()
	ui.nav_file(4)
end)








-- keymap.set("n", "J", "mzJ`z")
-- keymap.set("n", "<C-d>", "<C-d>zz")
-- keymap.set("n", "<C-u>", "<C-u>zz")
-- keymap.set("n", "n", "nzzzv")
-- keymap.set("n", "N", "Nzzzv")

-- keymap.set("n", "Q", "<nop>")
-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- 
-- keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- 
-- keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
-- 
-- keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
