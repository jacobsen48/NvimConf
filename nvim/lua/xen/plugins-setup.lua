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

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins

	if packer_bootstrap then
		require("packer").sync()
	end
end)

-- TO TRY PLUGINS
-- use("folke/zen-mode.nvim")
-- use("github/copilot.vim")
-- use("eandrju/cellular-automaton.nvim")
-- use("laytan/cloak.nvim")
-- use("nvim-treesitter/nvim-treesitter-context");
-- use("theprimeagen/refactoring.nvim")
-- use("nvim-treesitter/playground")
-- use({
--       "folke/trouble.nvim",
--       config = function()
--           require("trouble").setup {
--               icons = false,
--               -- your configuration comes here
--               -- or leave it empty to use the default settings
--               -- refer to the configuration section below
--           }
--       end
--   })
