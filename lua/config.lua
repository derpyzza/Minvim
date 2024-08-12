local options = {
	ru            = true,
	-- list          = true,
	number         = true,
	relativenumber = true,
	undofile       = true,
	smartcase      = true,
	lazyredraw     = true,
	termguicolors  = true,
	cursorline		 = true,
	cul						 = false,
	writebackup    = true,
	swapfile       = true,
	showmode 			 = false,
	linebreak			 = true,

	mouse         = "a",
	mousemodel 		= "extend",
	numberwidth 	= 1,
	tabstop       = 2,
	shiftwidth    = 0,
	scrolloff     = 4,
	updatetime    = 50,
	signcolumn    = "number",
	fillchars			= "eob: ",
	incsearch 		= true,
	clipboard     = "unnamedplus",
	cursorlineopt = "number",
	completeopt = 'menuone,noselect'
}

for i, v in pairs(options) do
	vim.opt[i] = v
end

-- disable inbuilt vim plugins
local built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(built_ins) do
  g["loaded_" .. plugin] = 1
end

vim.cmd [[ tnoremap <esc> <C-\><C-N>]]
