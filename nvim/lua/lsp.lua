--redundant because the plugin mason-org/mason-lspconfig.nvim auto-enables all lsps that it auto-installs

--[[vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
vim.lsp.enable("gopls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("ts_ls")
vim.lsp.enable("marksman")
vim.lsp.enable("vimls")
vim.lsp.enable("asm_lsp")
vim.lsp.enable("bashls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
]]--


vim.diagnostic.config({
	virtual_text = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "❌",
			[vim.diagnostic.severity.WARN] = "⚠",
			[vim.diagnostic.severity.HINT] = "⚡",
			[vim.diagnostic.severity.INFO] = "ℹ",
		},
	},
})
