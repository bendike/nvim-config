-- Leader
vim.g.mapleader = " "
vim.b.mapleader = " "

-- Side numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Mouse
vim.api.nvim_set_option("mouse", "a")

-- Scroll
vim.wo.scroll = 0
vim.wo.scrolloff = 3

-- Encoding
vim.api.nvim_set_option("encoding", "utf-8")

-- Keybinds
vim.api.nvim_set_keymap("n", "k", "gk", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "j", "gj", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "0", "g0", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "$", "g$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {noremap = true, silent = true})

-- Undo file
vim.api.nvim_set_option("undofile", true)
vim.api.nvim_set_option("undodir", "/home/bendik/.config/nvim/undodir")

--  Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
vim.o.splitright = true
vim.o.splitbelow = true

-- enable syntax highlighting
vim.cmd("syntax on")

-- enable filetype detection
vim.cmd("filetype plugin indent on")
-- enable syntax highlighting
vim.cmd("syntax on")

-- enable filetype detection
vim.cmd("filetype plugin indent on")

-- Tab stuff
vim.o.tabstop = 4
-- implicit tab size
vim.o.softtabstop = 4
-- another kind of stabstop
vim.o.shiftwidth = 4
-- convert tabs to spaces
vim.o.expandtab = true
vim.o.autoindent = true

-- FZF
vim.api.nvim_set_keymap("n", "<C-p>", ":Rg <CR>",
                        {noremap = true, silent = true})

-- Git
vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit <CR>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bl", ":Gitsigns blame_line <CR>",
                        {noremap = true, silent = true})

-- Show diagnostic in floating window
vim.g["cursorhold_updatetime"] = 100
vim.cmd([[au CursorHold * lua vim.diagnostic.open_float(0,{scope = "cursor"})]])

vim.diagnostic.config({

    -- virtual_text = false,
    virtual_text = {source = true},
    severity_sort = true
    -- signs = true,
    -- float = {border = "single"}
})
