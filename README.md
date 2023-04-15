# NvimConf

My Neovim configuration!

### Relevant Files

-[Neovim](https://neovim.io/) (Version 0.8/9 or Later) 

-[Nerd Font](httsp://www.nerdfonts.com/) - I use Anonymice Nerd Font Mono 

-[Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder

## Plugins

#### Plugin Manager

-[wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Popular plugin manager

#### Dependency For Other Plugins

- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Preferred Colorscheme

- [loctvl842/monokai-pro.nvim](https://github.com/loctvl842/monokai-pro.nvim)

#### Navigating Between Neovim Windows and Tmux

- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### Essentials

- [tpope/vim-surround](https://github.com/tpope/vim-surround) - manipulate surroundings with "ys", "ds", and "cs"
- [vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) - replace things with register with "gr"
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"

#### VS Code Like Icons

- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

#### Status Line

- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### Fuzzy Finder & Harpoon

- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) - Plugin that mark a file to reach fastly with keyboard shortcut

#### Syntax Highlighting & Autoclosing Things

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

#### Git (gitsigns & fugitive)

- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Show line modifications on left hand side
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - All git actions on Neovim

#### Term

- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - Terminal Plugin

#### Undotree

- [mbbill/undotree](https://github.com/mbbill/undotree) - Open a history page of the file

#### LSP CMP 
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim) - This is a bundle of plugins

## IMPORTANT

Modify keybinds in the lsp file (nvim/lua/xen/plugins/lsp/lspconfig.lua)
