vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("rebelot/kanagawa.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		requires = { { "JoosepAlviste/nvim-ts-context-commentstring" } },
		run = ":TSUpdate",
	})

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
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
	})
	use("petertriho/nvim-scrollbar")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use({ "windwp/nvim-ts-autotag" })
	use({ "theprimeagen/harpoon" })
	use({ "mbbill/undotree" })
	use({ "tpope/vim-fugitive" })
	use({ "f-person/git-blame.nvim" })
	use({
		"Wansmer/treesj",
		requires = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("treesj").setup({--[[ your config ]]
				use_default_keymaps = true,
			})
		end,
	})
	use({ "lewis6991/gitsigns.nvim" })
	use({ "numToStr/Comment.nvim" })
	use({ "stevearc/oil.nvim" })
end)
