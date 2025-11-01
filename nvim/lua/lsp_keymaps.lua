vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback =
		function(ev)
			-- keymaps options
			local opts = { noremap = true, silent = true }

			--[[TODO: Requires nvim telescope to work
			opts.desc = "show LSP references" 
			keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
			]]--

			opts.desc = "go to declaration"
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "go to definition"
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

			--[[TODO: again requires telescope
			opts.desc = "show LSP implementation"
			keymap.set("n", "gi", "<cmd>Telescope lsp_implementation<CR>", opts)

			opts.desc = "show LSP type definitions"
			keymap.set("n", "gt", "<cmd>Telescope lsp_type_definition<CR>", opts)
			]]--

			opts.desc = "see available actions"
			vim.keymap.set({"n", "v"}, "<space>a", vim.lsp.buf.code_action, opts)

			opts.desc = "smart rename"
			vim.keymap.set("n", "<space>r", vim.lsp.buf.rename, opts)

			opts.desc = "show line diagnostics"
			vim.keymap.set("n", "<space>f", vim.diagnostic.open_float, opts)

			opts.desc = "go to next diagnostic"
			vim.keymap.set("n", "F", function()
				vim.diagnostic.jump({count = -1, float = true})
			end, opts)

			opts.desc = "go to previous diagnostic"
			vim.keymap.set("n", "f", function()
				vim.diagnostic.jump({count = 1, float = true})
			end, opts)

			opts.desc = "show documentation for what you cursor is on"
			vim.keymap.set("n", "I", vim.lsp.buf.hover, opts)

			opts.desc = "restart LSP"
			vim.keymap.set("n", "<space>rs", ":LspRestart<CR>", opts)

		end,
})

