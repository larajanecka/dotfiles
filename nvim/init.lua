require('base')

local keymap = vim.keymap.set

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
--LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
--Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'

--Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

-- Color scheme
Plug 'srcery-colors/srcery-vim'

-- Other
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'kamykn/spelunker.vim'

Plug "tpope/vim-sensible"
Plug 'stevearc/dressing.nvim'


-- Disabled
--Plug 'APZelos/blamer.nvim'
--Plug('neoclide/coc.nvim', {branch = 'release'})
--Plug 'jose-elias-alvarez/null-ls.nvim'
--Plug 'MunifTanjim/eslint.nvim'
--Plug 'MunifTanjim/prettier.nvim'

-- To configure
Plug 'tpope/vim-commentary'
-- consider switching to COQ
-- multiple cursors
-- case switching

-- TODO: optionally lsp saga

vim.call('plug#end')
vim.cmd 'colorscheme srcery'
vim.cmd 'set updatetime=100'
vim.keymap.set('n', '<leader>sd', ':NERDTreeToggle', {})
vim.keymap.set('n', '<leader>gb', ':BlamerToggle', {})
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { noremap=true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { noremap=true })

require('lsp-setup')
require('key-bindings')
require('coc-setup')
require('telescope-setup')
require('null-ls-setup')
require('prettier-setup')
require('eslint-setup')
