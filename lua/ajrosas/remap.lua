vim.g.mapleader = ' '

local bind = vim.keymap.set

bind('n', '<leader>pv', vim.cmd.Ex)

bind('n', '<A-j>', "V:m '>+1<CR>gv=gv<Esc>")
bind('n', '<A-k>', "V:m '<-2<CR>gv=gv<Esc>")
bind('v', '<A-j>', ":m '>+1<CR>gv=gv")
bind('v', '<A-k>', ":m '<-2<CR>gv=gv")

bind('n', 'J', 'mzJ`z')
bind('n', '<C-d>', '<C-d>zz')
bind('n', '<C-u>', '<C-u>zz')
bind('n', 'n', 'nzzzv')
bind('n', 'N', 'Nzzzv')

-- greatest remap ever
bind('x', '<leader>p', [['_dP]])

-- next greatest remap ever : asbjornHaland
bind({ 'n', 'v' }, '<leader>y', [['+y]])
bind('n', '<leader>Y', [['+Y]])

bind({ 'n', 'v' }, '<leader>d', [['_d]])

-- This is going to get me cancelled
bind('i', '<C-c>', '<Esc>')

bind('n', 'Q', '<nop>')
bind('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
bind('n', '<leader>f', vim.lsp.buf.format)

bind('n', '<C-k>', '<cmd>cnext<CR>zz')
bind('n', '<C-j>', '<cmd>cprev<CR>zz')
bind('n', '<leader>k', '<cmd>lnext<CR>zz')
bind('n', '<leader>j', '<cmd>lprev<CR>zz')

bind('n', '<leader>r', [[:%s///g<Left><Left><Left>]])
bind('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

bind('n', '<leader><leader>', function()
	vim.cmd('so')
end)

-- Git Remappings
bind('n', '<leader>gs', vim.cmd.Git)
bind('n', '<F9>', ':G pull<CR>')
bind('n', '<F10>', ':G add .<CR>')
bind('n', '<A-f>', ":G commit -m ''<left>")
bind('n', '<F12>', ':G push<CR>')

-- local function netrw_mapping()
--   vim.keymap.del('n', '<F1>', {buffer = true, remap = true})
-- end
--
-- local user_cmds = vim.api.nvim_create_augroup('user_cmds', {clear = true})
-- vim.api.nvim_create_autocmd('filetype', {
--   pattern = 'netrw',
--   group = user_cmds,
--   desc = 'Keybindings for netrw',
--   callback = netrw_mapping
-- })

