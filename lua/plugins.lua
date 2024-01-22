return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')
    end
  },
  'theprimeagen/harpoon',
  'tpope/vim-fugitive',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      'neovim/nvim-lspconfig',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    }
  },
  'fedepujol/bracketpair.nvim',
  'alvan/vim-closetag',
  'tpope/vim-surround',
  'andweeb/presence.nvim',
}

