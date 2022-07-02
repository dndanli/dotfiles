vim.o.expandtab = true 
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2 
vim.o.expandtab = true
vim.o.swapfile = false
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
    --colors
    use { "ellisonleao/gruvbox.nvim" }
    use 'sainnhe/edge'

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

end)


require('lsp')

vim.t.is_transparent = 0
function toggle_transparent()
    if vim.t.is_transparent == 0 then
        vim.api.nvim_set_hl(0, "Normal", {guibg = NONE; ctermbg = NONE})
        vim.t.is_transparent = 1
    else
        vim.opt.background = "dark"
        vim.t.is_transparent = 0
    end
end

vim.keymap.set("n", "<F2>", toggle_transparent, opts)

vim.o.background = 'dark'
vim.g.edge_style = 'aura'
vim.cmd[[colorscheme gruvbox]]


require('lualine').setup {}

keymap('n','ff', '<cmd>Telescope find_files<CR>', {})
keymap("n", "ee", "<cmd>NvimTreeToggle<CR>", opts)

require'nvim-tree'.setup {
  view = {
    width = 20,
    height = 30,
    hide_root_folder = false,
    side = "left",
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

