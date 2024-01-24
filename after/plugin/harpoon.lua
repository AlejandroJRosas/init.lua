require 'harpoon'.setup {
  menu = {
    width = vim.api.nvim_win_get_width(0) - 7,
  },

  -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
  save_on_toggle = true,

  -- saves the harpoon file upon every change. disabling is unrecommended.
  save_on_change = true,

  -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
  enter_on_sendcmd = false,

  -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
  tmux_autoclose_windows = false,

  -- filetypes that you want to prevent from adding to the harpoon list menu.
  excluded_filetypes = { "harpoon" },

  -- set marks specific to each git branch inside git repository
  mark_branch = false,

  -- enable tabline with harpoon marks
  tabline = true,
  tabline_prefix = "   ",
  tabline_suffix = "   ",
}

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<F1>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<F2>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<F3>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<F4>', function() ui.nav_file(4) end)
vim.keymap.set('n', '<F5>', function() ui.nav_file(5) end)
vim.keymap.set('n', '<F6>', function() ui.nav_file(6) end)
vim.keymap.set('n', '<F7>', function() ui.nav_file(7) end)
vim.keymap.set('n', '<F8>', function() ui.nav_file(8) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=#63ff8c')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#00f5ff')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7a99f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

