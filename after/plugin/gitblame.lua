require("gitblame").setup({
    enabled = false
})

vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameToggle)
--temporary fix (https://github.com/f-person/git-blame.nvim/issues/90)
vim.g.gitblame_enabled = false
