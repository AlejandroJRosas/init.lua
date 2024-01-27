vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 50

vim.opt.colorcolumn = '80'

vim.g.mapleader = ' '

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=#63ff8c')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#00f5ff')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7a99f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

vim.g.gitblame_date_format = '%r | %x • %I:%M %p'

