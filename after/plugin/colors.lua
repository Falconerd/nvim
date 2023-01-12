function ColorScheme(colorscheme)
	colorscheme = colorscheme or "ayu"
	vim.cmd.colorscheme(colorscheme)
    -- test
    vim.api.nvim_set_hl(0, "Comment", {fg = "#00ffff"})
end

ColorScheme()
