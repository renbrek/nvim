function ColorMyPencils(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	--vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
	--vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
	--vim.api.nvim_set_hl(0, "DiagnosticSign", {bg = "none"})
end

ColorMyPencils()
