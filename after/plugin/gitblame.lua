require("gitblame").setup({})

vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameToggle)
