return {
  'f-person/git-blame.nvim',

  config = function()
    vim.g.gitblame_date_format = '%r | %x • %I:%M %p'
  end
}
