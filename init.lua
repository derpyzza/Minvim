
_G.theme = "paradise"

-- reload neovim when this file's edited
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost packages.lua source <afile> | PackerSync
augroup end
]]

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

require('impatient')
require("config")
-- Old Colour scheme, gracefully stolen from nyoom.nvim
-- require("colours")
require("keys")
require("packages")

