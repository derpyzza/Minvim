-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Install plugins
return {
	-- Autopair
	{
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end,
	},

	"RRethy/nvim-base16",

	"OmniSharp/omnisharp-vim",

	{
		'nvim-treesitter/nvim-treesitter',
		run = 'TSUpdate',
	},

	'nvim-treesitter/playground',
	'ray-x/web-tools.nvim',

	{
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	},

	'lewis6991/impatient.nvim',
--- Uncomment these if you want to manage LSP servers from neovim
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{ 'hrsh7th/cmp-buffer' },   -- Optional
	{ 'hrsh7th/cmp-path' },     -- Optional
	{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
	{ 'hrsh7th/cmp-nvim-lua' }, -- Optional
	{ 'L3MON4D3/LuaSnip' },         -- Required
	{ 'rafamadriz/friendly-snippets' }, -- Optional

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } },
	},

	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},

	-- use {
	-- 	'j-hui/fidget.nvim',
	-- 	config = function()
	-- 		require("fidget").setup {}
	-- 	end
	-- }

	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},

	{
		"ggandor/leap.nvim",
		config = function ()
			require('leap').add_default_mappings(true)
		end
	},

	{
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
	},

	{
		"norcalli/nvim-colorizer.lua",
		cmd = "ColorizerToggle",
		config = function()
			require("colorizer").setup()
		end,
	},

	-- Dashboard (start screen)
	{
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	},

	'simrat39/rust-tools.nvim',
	-- Debugging
	'nvim-lua/plenary.nvim',
	'mfussenegger/nvim-dap',

	{
		"folke/twilight.nvim"
	},
}
