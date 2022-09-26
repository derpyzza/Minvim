local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

-- NORMAL MODE BINDS
map('', ';', ':')
map('', 'j', 'gj')
map('', 'k', 'gk')
map('', 'ss', '<cmd>sp<CR>')
map('', 'vs', '<cmd>vs<CR>')

-- INSERT MODE BINDS
map('i', 'kj', '<esc>')

-- LEADER KEY BINDS
map('', '<leader>n', '<cmd>TSHighlightCapturesUnderCursor<CR>')
map('', '<leader>f', '<cmd>ColorizerToggle<CR>')
map('', '<leader>t', '<cmd>Twilight<CR>')
map('', '<leader><leader>', '<cmd>Telescope find_files<CR>')
map('', '<leader>l', '<cmd>Telescope live_grep<CR>')
map('', '<leader>b', '<cmd>Telescope buffers<CR>')
map('', '<leader>h', '<cmd>Telescope help_tags<CR>')
