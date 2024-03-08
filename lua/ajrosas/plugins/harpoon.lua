return {
  'ThePrimeagen/harpoon',

  branch = 'harpoon2',

  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require('harpoon')

    harpoon:setup({
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      }
    })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

    vim.keymap.set('n', '<F1>', function()
      harpoon:list():select(1)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F2>', function()
      harpoon:list():select(2)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F3>', function()
      harpoon:list():select(3)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F4>', function()
      harpoon:list():select(4)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F5>', function()
      harpoon:list():select(5)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F6>', function()
      harpoon:list():select(6)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F7>', function()
      harpoon:list():select(7)
      vim.cmd(":do User")
    end)
    vim.keymap.set('n', '<F8>', function()
      harpoon:list():select(8)
      vim.cmd(":do User")
    end)

    function Harpoon_files()
      local contents = {}
      local marks_length = harpoon:list():length()
      local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
      for index = 1, marks_length do
        local harpoon_file_path = harpoon:list():get(index).value
        local file_name = harpoon_file_path == "" and "(empty)" or vim.fn.fnamemodify(harpoon_file_path, ':t')
        local current_file_name = current_file_path == "" and "(empty)" or vim.fn.fnamemodify(current_file_path, ':t')

        if current_file_name == file_name then
          contents[index] = string.format("%%#HarpoonNumberActive# %s. %%#HarpoonActive#%s ", index, file_name)
        else
          contents[index] = string.format("%%#HarpoonNumberInactive# %s. %%#HarpoonInactive#%s ", index, file_name)
        end
      end

      return table.concat(contents)
    end

    vim.opt.showtabline = 2
    vim.api.nvim_create_autocmd({ "User" }, {
      callback = function()
        vim.o.tabline = Harpoon_files()
      end
    })

    vim.api.nvim_set_hl(0, 'HarpoonNumberInactive', { bg = 'none', fg = '#7a99f7' })
    vim.api.nvim_set_hl(0, 'HarpoonInactive', { bg = 'none', fg = '#63698c' })
    vim.api.nvim_set_hl(0, 'HarpoonNumberActive', { bg = 'none', fg = '#00f5ff' })
    vim.api.nvim_set_hl(0, 'HarpoonActive', { bg = 'none', fg = '#63ff8c' })
  end
}
