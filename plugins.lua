return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use "antoinemadec/FixCursorHold.nvim"

    use "junegunn/fzf.vim"
    use "junegunn/fzf"

    use "tpope/vim-surround"
    use "scrooloose/nerdtree"
    use "tpope/vim-commentary"

    use "navarasu/onedark.nvim"
    use "norcalli/nvim-colorizer.lua"
    use {
        "hoob3rt/lualine.nvim",
        requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }

    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "hrsh7th/nvim-compe"

    use {"tenfyzhong/autoflake.vim", run = "pip install autoflake"}

    -- use "github/copilot.vim"

    use "neovim/nvim-lspconfig"
    use({
        "jose-elias-alvarez/null-ls.nvim",
        requires = {"nvim-lua/plenary.nvim"}
    })

    use {
        "nvim-telescope/telescope.nvim",
        requires = {{"nvim-lua/plenary.nvim"}}
    }

    use {"lewis6991/gitsigns.nvim", requires = {{"nvim-lua/plenary.nvim"}}}

    use "kdheepak/lazygit.nvim"
    use "christoomey/vim-tmux-navigator"

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end
    })
    use {
        "folke/zen-mode.nvim",
        config = function() require("zen-mode").setup {} end
    }
end)
