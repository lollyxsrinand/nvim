require("mason").setup()
require("mason-lspconfig").setup({
ensure_installed = { "lua_ls", "clangd", "tsserver", "cssls"  }})

local on_attach = function(_, _)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', 'K', vim.lsp.bu.hover, {})

end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
require("lspconfig").clangd.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

require("lspconfig").tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
require("lspconfig").cssls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
