require('packer').startup(function()
    --colors
    use 'sainnhe/edge'

    --utils
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'styled-components/vim-styled-components'
    use 'jiangmiao/auto-pairs'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use {
      'prettier/vim-prettier',
      run = 'npm install'
    }
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    }

end)


require('lualine').setup {}
require("mason").setup()
require("mason-lspconfig").setup()
require'nvim-tree'.setup {
  view = {
    width = 28,
    height = 28,
    hide_root_folder = false,
    side = "right",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
}
