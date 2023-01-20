local builtin = require('telescope.builtin')
local telescope = require("telescope")
telescope.setup({
	defaults = {
		file_ignore_patterns = { "dist", "generated", "node_modules", "prisma/migrations" },
	},
})
pcall(telescope.load_extension, "fzf")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', "<cmd>:Telescope<CR>", {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
