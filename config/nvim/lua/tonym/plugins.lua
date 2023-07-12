-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use {'wbthomason/packer.nvim'}

    -- Theme
    use {'rose-pine/neovim', config = "vim.cmd('colorscheme rose-pine')"}

    -- General Plugins
    use {'rstacruz/vim-closer'}
    use {'theprimeagen/harpoon'}
    use {'mbbill/undotree'}

    -- Git
    use {'tpope/vim-fugitive'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-repeat'}
    use {'tpope/vim-commentary'}

    -- Tmux split navigation
    use {'christoomey/vim-tmux-navigator'}

    -- Maximize vim split window
    use {'szw/vim-maximizer'}

    -- Indentation
    use {'michaeljsmith/vim-indent-object'}

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'},
    }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            'neovim/nvim-lspconfig',
            {'williamboman/mason.nvim', run = 'MasonUpdate'},
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
        },
    }

    -- Smooth Cursor
    use {
        'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup()
        end,
    }
end)
