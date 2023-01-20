			require("formatter").setup({
				logging = true,
				log_level = vim.log.levels.ERROR,

				filetype = {
					lua = {
						require("formatter.filetypes.lua").stylua,
					},
					typescript = {
						require("formatter.filetypes.typescript").prettierd,
					},
					yaml = {
						require("formatter.filetypes.yaml").pyyaml,
					},
					typescriptreact = {
						require("formatter.filetypes.typescriptreact").prettierd,
					},
					sh = {
						require("formatter.filetypes.sh").shfmt,
					},
					markdown = {
						require("formatter.filetypes.markdown").prettier,
					},
					["*"] = {
						-- "formatter.filetypes.any" defines default configurations for any
						-- filetype
						require("formatter.filetypes.any").remove_trailing_whitespace,
					},
				},
			})
