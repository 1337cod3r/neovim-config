local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"rose-pine/neovim"
	},

	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate"
	},

	{
		"theprimeagen/harpoon",
		branch = "harpoon2",
	},

	{
		"nvim-lua/plenary.nvim",
	},

	{
		"mbbill/undotree",
	},

	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "⟳",
					package_uninstalled = "✗",
				}
			},
		}
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { -- auto-installs and enables the following
				"lua_ls",
				"pyright",
				"clangd",
				"gopls",
				"rust_analyzer",
				"ts_ls",
				"marksman",
				"vimls",
				"asm_lsp",
				"bashls",
				"html",
				"cssls",
			}
		}
	},

	-- LSP configuration. lspconfig is filled with a lot of good out of the box
	-- configurations for using LSPs in neovim.
	{
		"neovim/nvim-lspconfig",
	},

	{
		"saghen/blink.cmp",

		--optional: provides snippets for the filetype
		--dependencies = {
		--	"rafamadriz/friendly-snippets"
		--},

		version = "1.*",

		---@module "blink.cmp"
		---@type blink.cmp.Config

		opts = {
			-- keymaps:
			-- default: (recommended), C-y to accept completion
			-- super-tab: vscode-esque keymaps like tab to accept
			-- enter: enter to accept
			-- none: no mappings
			--
			-- all presets have the following mappings:
			-- C-space: open menu or open docs if menu already open
			-- C-n/C-p: next or previous item (WARN! this is overriden in this config with C-j/C-k)
			-- C-e: hide menu
			-- C-k:	toggle signature help (if signature.enabled = true)
			--
			-- default has the following mappings:
			-- C-b/C-f: scroll documentation forwards/backwards (WARN! this is overriden in this config with C-l/C-h)
			--
			-- this config has the following remaps:
			-- S-tab: accept completion
			-- C-j/C-k: next or previous item
			-- C-l/C-h: scroll documentation forwards/backwards
			--
			-- see :h blink-cmp-config-keymap for defining your own keymap

			keymap = {
				preset = "default",
				["<C-l>"] = { "scroll_documentation_down" },
				["<C-h>"] = { "scroll_documentation_up" },
				["<C-j>"] = { "select_next" },
				["<C-k>"] = { "select_prev" },
				["<S-Tab>"] = { "accept" },
			},

			appearance = {
				-- default for nerd font mono, normal for nerd font
				nerd_font_variant = "mono"
			},

			signature = {
				enabled = true,
			},

			completion = {
				accept = {
					-- experimental auto-brackets support
					auto_brackets = {
						enabled = true,
					},
				},

				menu = {
					draw = {
						treesitter = { "lsp" },
					},
				},
				-- auto_show completions or only when manyally triggered
				documentation = { auto_show = false },
			},

			sources = {
				-- default list of enabled providers defined
				default = { "lsp", "path", "snippets", "buffer" },
			},

			-- fuzzy matcher for typo resistance
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},


		opts_extend = { "sources.default" },
	},

	{
		"folke/lazydev.nvim",
		opts = {},
	},

})
