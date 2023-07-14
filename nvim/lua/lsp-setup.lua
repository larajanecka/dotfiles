
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.configure('tsserver', {
  init_options = {
					preferences = {
						importModuleSpecifierPreference = "non-relative",
						noUnusedParameters = false,
					},
  }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr}
  local bind = vim.keymap.set

  bind('n', '<leader>re', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  bind('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)


-- local cmp = require("cmp")
--   cmp.setup({
--     -- snippet = {
--     --   -- REQUIRED - you must specify a snippet engine
--     --   expand = function(args)
--     --     require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--     --   end,
--     -- },
--     window = {
--       completion = cmp.config.window.bordered(),
--       documentation = cmp.config.window.bordered(),
--     },
--     mapping = cmp.mapping.preset.insert({
--       ['<C-CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     }),
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = 'buffer' },
--       -- { name = 'luasnip' }, -- For luasnip users.
--     })
-- })

lsp.setup()

--  vim.api.nvim_create_autocmd("CursorHold", {
--     buffer = bufnr,
--     callback = function()
--       local opts_ = {
--         focusable = false,
--         close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
--         border = 'rounded',
--         source = 'always',
--         prefix = ' ',
--         scope = 'cursor',
--       }
--       vim.diagnostic.open_float(nil, opts_)
--     end
--   })
-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
vim.diagnostic.config({
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
