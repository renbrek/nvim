-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,
		},
		typescript = {
			require("formatter.defaults").prettierd,
		},
		javascript = {
			require("formatter.defaults").prettierd,
		},
		typescriptreact = {
			require("formatter.defaults").prettierd,
		},
		javascriptreact = {
			require("formatter.defaults").prettierd,
		},
		vue = {
			require("formatter.defaults").prettierd,
		},
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},
})

vim.keymap.set("n", "<leader>f", vim.cmd.Format, {})
vim.keymap.set("n", "<leader>j", vim.cmd.FormatWrite, {})

vim.cmd([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]])
