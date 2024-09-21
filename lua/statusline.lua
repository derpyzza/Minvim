function Status()
	return table.concat({
		":::",
		string.format(" %s ", vim.api.nvim_get_mode().mode):upper(),
		-- "%#STATUS#",
		"%f", -- path to file in buffer
		"%m", -- modified flag [+]
		"%r", -- readonly flag
		"%h", -- help buffer flag
		"%w", -- preview window flag
		"%=", -- separation
		"%##",-- not sure, empty highlight group ig
		" %c:%l ",	-- Column and line numbers
		-- "%#FILETYPE#", -- Again, some sort of highlight group
		"%y:%L", -- filetype followed by total number of lines in the file
	})
end

-- Execute statusline
vim.api.nvim_create_autocmd({"WinEnter", "BufEnter"}, {
  pattern = "*",
  command = "setlocal statusline=%!v:lua.Status()",
})

