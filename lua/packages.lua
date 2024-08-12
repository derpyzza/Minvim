-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------


-- Plugins to install
return {

	{'simrat39/inlay-hints.nvim'},
	--
	{ "lukas-reineke/indent-blankline.nvim", 
		main = "ibl", opts = {},
		config = function ()
			require("plugins.indent-blankline")
		end
	},
	-- Base16 colourscheme
	{
		"RRethy/nvim-base16",
		config = function ()
			require("plugins.base-16")
		end,
	},

	--{{ tree sitter
	{
		'nvim-treesitter/nvim-treesitter',
		run = 'TSUpdate',
		config = function()
			require("plugins.treesitter")
		end
	},
	-- 'nvim-treesitter/playground',
	--tree sitter }}

	-- nvim-tree
	{
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("plugins.nvim-tree")
		end,
	},

	-- rust-tools
	{
		'simrat39/rust-tools.nvim',
		config = function ()
			require("plugins.rust-tools")
		end
	},

	--== CMP ==
	{
		'hrsh7th/nvim-cmp',
		config = function()
			require("plugins.cmp")
		end,
	},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{
		"neovim/nvim-lspconfig",
	},
	{'hrsh7th/cmp-nvim-lsp'},
	{'L3MON4D3/LuaSnip'},
	{'hrsh7th/cmp-buffer' },
	{'hrsh7th/cmp-path' }, 
	{'saadparwaiz1/cmp_luasnip' },
	{'rafamadriz/friendly-snippets' },
	--== CMP ==
	
	-- telescope
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		requires = { { 'nvim-lua/plenary.nvim' } },
		config = function()
			require("plugins.telescope")
		end
	},

	-- Autopair
	{
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end,
	},	

	{
		'williamboman/mason.nvim',
		config = function()
			require("mason").setup()
		end
	},

	{
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require("plugins.mason-lsp")
		end
	},

	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	
	{
		'rcarriga/nvim-notify',
	}, 

	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
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

	{
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
	},

	-- Debugging
	'nvim-lua/plenary.nvim',
	'mfussenegger/nvim-dap',
}
