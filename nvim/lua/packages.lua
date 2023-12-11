-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

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

	-- Ascii drawings within neovim
	use "jbyuki/venn.nvim"

	use "RRethy/nvim-base16"

	-- C# intellisense
	use "OmniSharp/omnisharp-vim"

	-- Helps with syntax detection
	use('nvim-treesitter/nvim-treesitter', { run = 'TSUpdate' })
	use 'nvim-treesitter/playground'

	-- Webdev tools
	use 'ray-x/web-tools.nvim'

	-- Filetree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	use 'lewis6991/impatient.nvim'

	-- Language server parser..?
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

	-- Grepper
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } },
	}

	-- Commenting
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- use {
	-- 	'j-hui/fidget.nvim',
	-- 	config = function()
	-- 		require("fidget").setup {}
	-- 	end
	-- }

	-- Debug ui stuff
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

	-- Fast movement
	use {
		"ggandor/leap.nvim",
		config = function ()
			require('leap').add_default_mappings(true)
		end
	}

	-- Key map help
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

	-- Highlights colour tags ( #f42069 )
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
