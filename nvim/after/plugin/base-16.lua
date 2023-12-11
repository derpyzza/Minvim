local colors = require("colors." .. _G.theme)

require('base16-colorscheme').setup(
	colors
)

settings = {
    Comment = 
		{
        gui     = "Bold",
    }, 
		Conditional = 
		{
				guifg		= colors.base0D,
		},
		Operator = {
			guifg = colors.base03,
		},
		String = 
		{
			guifg = colors.base09,
		},
		Todo =
		{
				guifg		= colors.base08,
				guibg		= colors.base00,
		},

		-- *** GUI RELATED ***
		StatusLineNC= {
				guifg		= colors.base03,
				guibg 	= "NONE",
		},
		StatusLine 	= {
				guifg		= colors.base0B,
				guibg 	= "NONE",
				gui 		= "NONE"
		},
		FILETYPE 		= {
				guifg		= colors.base0B
		},
		STATUS 			= {
				guifg		= colors.base0D,
		},
		CursorLineNr = {
			guifg = colors.base0E,
			guibg = "NONE",
			gui = "Bold"
		},
    MatchParen = 
		{
        guifg   = colors.base09,
        gui     = "Bold"
    },
		Pmenu = {
				guibg 	= colors.base00,
				guifg 	= colors.base04,
		},
		PmenuSel = {
			guibg		= colors.base0B,
			guifg 	= colors.base01,
		},
		PmenuSbar = {
			guibg 	= colors.base03
		},
		PmenuThumb = {
			guibg		= colors.base0B
		},
		LineNr = 
		{
				guifg 	= colors.base02,
		},
		SpecialKey = -- for stuff like "tabs", "trails", and "nbsp". A blatant lie.
		{
			guifg = colors.base01
		},
		VertSplit = 
		{
			guifg		= colors.base02
		},
}

for k, v in pairs(settings) do
    if type(v) == "table" then
        op = ""
        for ik, iv in pairs(v) do
            op = op .. ik .. "=" .. iv .. " "
        end
    else 
        op = v
    end
    hi = "hi " .. k .. " " .. op
    vim.cmd(hi)
end
