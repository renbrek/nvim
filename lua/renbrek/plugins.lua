local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		"nvim-telescope/telescope.nvim",
		version = "0.1.2",
		-- or                            , branch = '0.1.x',
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"rebelot/kanagawa.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
		build = ":TSUpdate",
	},
	{
		"folke/trouble.nvim"
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to  `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to  defaults
			})
		end,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional

			-- Formatters
			{ "mhartington/formatter.nvim" },
		},
	},
	"petertriho/nvim-scrollbar",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	"windwp/nvim-ts-autotag",
	"theprimeagen/harpoon",
	"mbbill/undotree",
	"tpope/vim-fugitive",
	"f-person/git-blame.nvim",
	{
		"Wansmer/treesj",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesj").setup({--[[ your config ]]
				use_default_keymaps = true,
			})
		end,
	},
	"lewis6991/gitsigns.nvim",
	"numToStr/Comment.nvim",
	"stevearc/oil.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
