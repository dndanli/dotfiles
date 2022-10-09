local keymap = vim.api.nvim_set_keymap
keymap('n','ff', '<cmd>Telescope find_files<CR>', {})

local opts = {noremap = true}
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n','ff', '<cmd>Telescope find_files<CR>', {})
keymap("n", "ee", "<cmd>NvimTreeToggle<CR>", opts)