-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- reload neovim when this file's edited
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost packages.lua source <afile> | PackerSync
augroup end
]]

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Install plugins
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Autopair
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	}

	use "RRethy/nvim-base16"

	use('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' })
	use 'nvim-treesitter/playground'

	use 'ray-x/web-tools.nvim'

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use 'lewis6991/impatient.nvim'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },         -- Required
			{ 'williamboman/mason.nvim' },       -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },     -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' },   -- Optional
			{ 'hrsh7th/cmp-path' },     -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },         -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		}
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } },
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use {
		'j-hui/fidget.nvim',
		config = function()
			require("fidget").setup {}
		end
	}

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	use {
		"ggandor/leap.nvim",
		config = function ()
			require('leap').add_default_mappings(true)
		end
	}

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}

	use {
		"norcalli/nvim-colorizer.lua",
		cmd = "ColorizerToggle",
		config = function()
			require("colorizer").setup()
		end,
	}

	-- Dashboard (start screen)
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}

	use 'simrat39/rust-tools.nvim'
	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'

	use {
		"folke/twilight.nvim"
	}
end)
