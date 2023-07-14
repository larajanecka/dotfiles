require('base')

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
--LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'prisma/vim-prisma'
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
Plug 'nvim-lualine/lualine.nvim'
Plug 'stevearc/dressing.nvim'
Plug 'akinsho/bufferline.nvim' 
Plug 'kyazdani42/nvim-web-devicons'

-- Tmux
Plug 'christoomey/vim-tmux-navigator'


-- Formatter
Plug 'mhartington/formatter.nvim'
-- Plug('kkoomen/vim-doge', { ['do'] = vim.fn['npm i --no-save && npm run build:binary:unix'] })


-- Other
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'kamykn/spelunker.vim'
Plug 'mileszs/ack.vim'
Plug 'mg979/vim-visual-multi'

Plug "tpope/vim-commentary"
Plug "tpope/vim-sensible"
Plug "tpope/vim-surround"
Plug "tpope/vim-abolish"
Plug 'APZelos/blamer.nvim'


vim.call('plug#end')


vim.cmd 'colorscheme srcery'
vim.cmd 'set updatetime=100'
vim.keymap.set('n', '<leader>nt', '<cmd>NERDTreeFind<cr>', {})
vim.keymap.set('n', '<leader>fm', '<cmd>FormatWrite<cr>', {})
vim.keymap.set('n', '<leader>gt', '<cmd>GitGutterPreviewHunk<cr>', {})
vim.keymap.set("n", "<leader>bl", "<cmd>BlamerToggle<cr>", {})
vim.keymap.set('n', '<leader>cp', '<cmd>:let @+ = expand("%")<cr>', {})


require('telescope-setup')
require('formatter-setup')
require('lsp-setup')
require('lualine-setup')
-- require("bufferline").setup{
--   options = {
--     mode = "tabs",
--     separator_style = "slant",
--   }
-- }


