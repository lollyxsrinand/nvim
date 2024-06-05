require('gruvbox').setup({
	  transparent_mode = true,
})
function giveColors(color)
	color = color or "ayu"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Normalfloat", { bg = "none" })
end

giveColors()
