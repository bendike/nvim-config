require"nvim-treesitter.configs".setup {
    ensure_installed = "all",
    highlight = {
        enable = true -- false will disable the whole extension
    }
}

-- Theme
require("onedark").load()

-- Info line
require("lualine").setup {
    options = {theme = "onedark"},
    extensions = {"nerdtree"},
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{"filename", path = 1}},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{"filename", path = 1}},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    }
}

-- Git symbols and tools

require("gitsigns").setup()
