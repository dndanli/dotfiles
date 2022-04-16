vim.bo.expandtab = true vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4

local keymap = vim.api.nvim_set_keymap
keymap('n','ff', '<cmd>Telescope find_files<CR>', {})

local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

vim.opt.termguicolors = true

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'shaunsingh/nord.nvim' 
    use 'shaunsingh/moonlight.nvim'
    use '/sainnhe/edge'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

vim.cmd[[colorscheme edge]]
vim.o.background = 'light'
