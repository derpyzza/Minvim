local function getWords()
  if vim.bo.filetype == "md" or vim.bo.filetype == "txt" or vim.bo.filetype == "markdown" then
    if vim.fn.wordcount().visual_words == 1 then
      return tostring(vim.fn.wordcount().visual_words) .. " word"
    elseif not (vim.fn.wordcount().visual_words == nil) then
      return tostring(vim.fn.wordcount().visual_words) .. " words"
    else
      return tostring(vim.fn.wordcount().words) .. " words"
    end
  else
    return ""
  end
end

local function StatusLine()
	stl = ""
	stl = stl .. "λ "
	stl = stl .. "%#STATUS#%f%m%r%h%w: %= %##%2l»%L %#FILETYPE#%y "
	stl = stl .. getWords()

	return stl
end

options = {
	ru            = true,
	list          = true,
	number        = true,
	relativenumber= true,
	undofile      = true,
	swapfile      = false,
	writebackup   = false,
	smartcase     = true,
	lazyredraw    = true,
	termguicolors = true,
	cursorline		= true,

	mouse         = "a",
	mousemodel 		= "extend",
	tabstop       = 2,
	shiftwidth    = 0,
	scrolloff     = 4,
	updatetime    = 50,
	signcolumn    = "number",
	fillchars			= "eob: ",
	incsearch 		= true,
	clipboard     = "unnamedplus",
	statusline    = StatusLine(),
	cursorlineopt = "number",
	completeopt = 'menu,menuone'
}

for i, v in pairs(options) do
	vim.opt[i] = v
end

vim.cmd [[ tnoremap <esc> <C-\><C-N>]]
