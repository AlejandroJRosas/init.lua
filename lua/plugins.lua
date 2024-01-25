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

  {
    'lukas-reineke/indent-blankline.nvim',
    dependencies = {
      'HiPhish/rainbow-delimiters.nvim'
    }
  },

  'theprimeagen/harpoon',

  'mbbill/undotree',

  'tpope/vim-fugitive',

  {
    'numToStr/Comment.nvim',
    lazy = false,
  },

  {
    'kevinhwang91/nvim-fundo',
    dependencies = {
      'kevinhwang91/promise-async',
    },
    build = function() require('fundo').install() end,
  },

  {
    'laytan/tailwind-sorter.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-lua/plenary.nvim'
    },
    build = 'cd formatter && npm i && npm run build',
    config = true,
  },

  'norcalli/nvim-colorizer.lua',

  'windwp/nvim-ts-autotag',

  'tpope/vim-surround',

  'andweeb/presence.nvim',

  'ThePrimeagen/vim-be-good'
}
