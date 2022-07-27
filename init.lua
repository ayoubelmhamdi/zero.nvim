vim.g.mapleader = ' '
vim.opt.termguicolors = true
vim.o.background = 'dark'
vim.cmd 'colorscheme gruvbox'

vim.cmd 'set cole=1'
vim.cmd 'set switchbuf=usetab'

require('packer').startup(function()
    use { 'wbthomason/packer.nvim', requires = { 'nvim-lua/popup.nvim', 'kyazdani42/nvim-web-devicons' } }

    -- LSP
    use { 'neovim/nvim-lspconfig', requires = { '~/Git/plugin/lspconfig.nvim', 'SmiteshP/nvim-navic' } }
    use { 'onsails/lspkind-nvim', requires = '~/Git/plugin/lspkind.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim', requires = '~/Git/plugin/null-ls.nvim' }
    use { 'akinsho/flutter-tools.nvim' }
    use { 'glepnir/lspsaga.nvim' }
    use { 'ray-x/lsp_signature.nvim' }

    -- telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- tree-Sitter: "nvim-treesitter/nvim-treesitter"
    use {
        'thmsmlr/nvim-treesitter',
        requires = { '~/Git/plugin/tree-sitter.nvim', '~/Git/plugin/tree-sitter-tweek.nvim' },
    }
    use { 'David-Kunz/treesitter-unit' }
    use { 'lewis6991/spellsitter.nvim' }

    -- nvim-cmp
    use { 'hrsh7th/nvim-cmp', requires = '~/Git/plugin/cmp.nvim' }
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
    use { 'mfussenegger/nvim-dap', requires = { '~/Git/plugin/dap.nvim', '~/Git/plugin/c-dap.nvim' } }
    use { 'rcarriga/nvim-dap-ui' }
    use { 'theHamsta/nvim-dap-virtual-text' }
    use { 'leoluz/nvim-dap-go' }

    -- plugin

    use { 'ur4ltz/surround.nvim', requires = '~/Git/plugin/surround.nvim' }
    use { 'windwp/nvim-autopairs', requires = '~/Git/plugin/autopair.nvim' }
    use { 'numToStr/Comment.nvim', requires = '~/Git/plugin/comment.nvim' }
    use {'kevinhwang91/nvim-hlslens', requires = '~/Git/plugin/hlslens.nvim'}

    -- git
    use { 'sindrets/diffview.nvim', require = '~/Git/plugin/diffview.nvim' }
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
    use { 'luukvbaal/nnn.nvim', requires = '~/Git/plugin/cfg-nnn.nvim' }
    use { 'voldikss/vim-floaterm' }
    use { 'static-nvim/mkdir' }
    use { 'fedepujol/move.nvim' }

    -- Theme
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'nvim-lualine/lualine.nvim', requires = '~/Git/plugin/statusline.nvim' }
    use { 'norcalli/nvim-colorizer.lua' }
    use { 'tjdevries/colorbuddy.nvim' }
    use { 'ellisonleao/gruvbox.nvim' }

    -- config
    use { '~/Git/plugin/autocmd.nvim' }
    use { '~/Git/plugin/set-setting.nvim' }
    use { '~/Git/plugin/keymaping.nvim' }
    use { '~/Git/plugin/test' }
    use { '~/Git/plugin/toglle_terminal.nvim' }
    use { '~/Git/plugin/highlight.nvim' }
end)


local opts = { noremap = true, silent = true }

vim.keymap.set("n",  "<F10>" , function()
	if vim.o.conceallevel > 0 then
		vim.o.conceallevel = 0
	else
		vim.o.conceallevel = 2
	end
end, opts)

vim.keymap.set("n",  "<F11>" , function()
	if vim.o.concealcursor == "n" then
		vim.o.concealcursor = ""
	else
		vim.o.concealcursor = "n"
	end
end, opts)
