return {
  'nvim-treesitter/nvim-treesitter',

  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'html',
        'css',
        'javascript',
        'typescript',
        'tsx',
        'json',
        'yaml',
        'xml',
        'sql',
        'svelte',
        'markdown'
      },

      sync_install = false,

      auto_install = true,

      indent = {
        enable = true
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
      },
    })

    local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
    treesitter_parser_config.templ = {
      install_info = {
        url = "https://github.com/vrischmann/tree-sitter-templ.git",
        files = { "src/parser.c", "src/scanner.c" },
        branch = "master",
      },
    }

    vim.treesitter.language.register("templ", "templ")
  end
}
