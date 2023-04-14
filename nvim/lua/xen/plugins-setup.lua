local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
 	augroup end
]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- colorscheme plugins (colorscheme.lua)
	use("rose-pine/neovim")
	use("xiyaowong/transparent.nvim")
	use("loctvl842/monokai-pro.nvim")

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essetnial plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- harpoon
	use("ThePrimeagen/harpoon")

	-- autocompletition
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag") -- utile per il developing con ts, js

	-- git signs plugin
	use("lewis6991/gitsigns.nvim")

	-- nvim terminal (ToggleTerm)
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	-- other config
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("onsails/lspkind.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- undotree
	use("mbbill/undotree")

	-- vim-fugitive (git integration)
	use("tpope/vim-fugitive")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins

	if packer_bootstrap then
		require("packer").sync()
	end
end)
