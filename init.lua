vim.g.mapleader = ' '
vim.opt.termguicolors = true
vim.o.background = 'dark'
vim.cmd 'colorscheme gruvbox'

return require('packer').startup(function()
    use { 'wbthomason/packer.nvim', requires = { 'nvim-lua/popup.nvim', 'kyazdani42/nvim-web-devicons' } }

    -- LSP
    use { 'neovim/nvim-lspconfig', requires = { 'config-nvim/cfg-lspconfig.nvim', 'SmiteshP/nvim-navic' } }
    use { 'onsails/lspkind-nvim', requires = 'config-nvim/cfg-lspkind.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim', requires = 'config-nvim/cfg-null-ls.nvim' }
    use { 'akinsho/flutter-tools.nvim' }
    use { 'glepnir/lspsaga.nvim' }
    use { 'ray-x/lsp_signature.nvim' }

    -- telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- tree-Sitter: "nvim-treesitter/nvim-treesitter"
    use { 'thmsmlr/nvim-treesitter', requires = 'config-nvim/cfg-tree-sitter.nvim' }
    use { 'David-Kunz/treesitter-unit' }
    use { 'lewis6991/spellsitter.nvim' }

    -- nvim-cmp
    use { 'hrsh7th/nvim-cmp', requires = 'config-nvim/cfg-cmp.nvim' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-emoji' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-path' }
    use { 'octaltree/cmp-look' }
    use { 'f3fora/cmp-spell' }

    -- dap
    use { 'mfussenegger/nvim-dap', requires = { 'config-nvim/cfg-dap.nvim', 'config-nvim/cfg-c-dap.nvim' } }
    use { 'rcarriga/nvim-dap-ui' }
    use { 'theHamsta/nvim-dap-virtual-text' }
    use { 'leoluz/nvim-dap-go' }

    -- plugin

    use { 'ur4ltz/surround.nvim', requires = 'config-nvim/cfg-surround.nvim' }
    use { 'windwp/nvim-autopairs', requires = 'config-nvim/cfg-autopair.nvim' }
    use { 'numToStr/Comment.nvim', requires = 'config-nvim/cfg-comment.nvim' }

    -- git
    use { 'sindrets/diffview.nvim', require = 'config-nvim/cfg-diffview.nvim' }
    use { 'TimUntersberger/neogit' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'airblade/vim-rooter' }

    -- Misc
    use '907th/vim-auto-save' -- auto save files like dart
    use { 'tjdevries/train.nvim' }
    -- use { 'phaazon/hop.nvim' }
    use { 'folke/todo-comments.nvim' }
    -- startup imprevment to be speed
    use { 'lewis6991/impatient.nvim' }

    -- Explorer & Terminal
    use { 'luukvbaal/nnn.nvim', requires = 'config-nvim/cfg-nnn.nvim' }
    use { 'voldikss/vim-floaterm' }
    use { 'static-nvim/mkdir' }
    use { 'fedepujol/move.nvim' }

    -- Theme
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'nvim-lualine/lualine.nvim', requires = 'config-nvim/cfg-statusline.nvim' }
    use { 'norcalli/nvim-colorizer.lua' }
    use { 'tjdevries/colorbuddy.nvim' }
    use { 'ellisonleao/gruvbox.nvim' }

    -- config
    use { 'config-nvim/cfg-autocmd.nvim' }
    use { 'config-nvim/cfg-set-setting.nvim' }
    use { 'config-nvim/cfg-keymaping.nvim' }
    use { 'config-nvim/cfg-test' }
    use { 'config-nvim/cfg-toglle_terminal.nvim' }
    use { 'config-nvim/cfg-highlight.nvim' }
end)
