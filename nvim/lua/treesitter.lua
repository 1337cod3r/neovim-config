require("nvim-treesitter.configs").setup {
	ensure_installed = {"lua", "python", "c", "cpp", "go", "rust", "javascript", "typescript", "markdown",
							"markdown_inline", "vim", "vimdoc", "query", "asm", "bash", "html", "css"},
	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
	
	indent = {
		enable = true,
	},
}
