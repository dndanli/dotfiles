vim.o.expandtab = true 
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2 
vim.o.expandtab = true
vim.bo.swapfile = false
vim.bo.smartindent = true
vim.bo.autoindent = true

vim.opt.scrolloff = 8
vim.opt.termguicolors = true

vim.wo.number = true
vim.wo.relativenumber = true

local keymap = vim.api.nvim_set_keymap
keymap('n','ff', '<cmd>Telescope find_files<CR>', {})

local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim' 
    use 'sainnhe/edge'
    
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
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
      'prettier/vim-prettier',
      run = 'npm install'
    }
end)

vim.g.edge_transparent_background = 1
vim.cmd[[colorscheme edge]]
vim.g.edge_style = 'neon'

--vim.o.background = 'light'

require('lsp')

