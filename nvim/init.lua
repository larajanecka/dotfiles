require('base')

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
--LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug  "jose-elias-alvarez/typescript.nvim"
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
Plug 'folke/trouble.nvim'

--Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})

-- Color scheme
Plug 'srcery-colors/srcery-vim'

-- Formatter
-- TODO: optionally lsp saga
Plug 'mhartington/formatter.nvim'

-- Other
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'kamykn/spelunker.vim'
Plug "numToStr/Comment.nvim"
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mg979/vim-visual-multi'

Plug "tpope/vim-sensible"
Plug "tpope/vim-abolish"
-- Plug 'stevearc/dressing.nvim'
Plug 'APZelos/blamer.nvim'

-- multiple cursors
-- case switching
-- surround
--


vim.call('plug#end')


vim.cmd 'colorscheme srcery'
vim.cmd 'set updatetime=100'
vim.keymap.set('n', '<leader>sd', '<cmd>NERDTreeFind<cr>', {})
vim.keymap.set('n', '<leader>fm', '<cmd>FormatWrite<cr>', {})
vim.keymap.set('n', '<leader>df', '<cmd>GitGutterPreviewHunk<cr>', {})
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>bl", "<cmd>BlamerToggle<cr>", {})

vim.keymap.set('n', '<leader>cp', '<cmd>:let @" = expand("%:p")<cr>', {})
require("Comment").setup()
require('trouble').setup()

require('telescope-setup')
require('formatter-setup')
require('lualine-setup')
require('lsp-setup')
