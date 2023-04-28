vim.api.nvim_set_keymap('n', '<Leader>n', ':NERDTreeToggle<CR>', {noremap = true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>f', ':NERDTreeFind<CR>', {noremap = true, silent=true})
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeWinSize = 30
