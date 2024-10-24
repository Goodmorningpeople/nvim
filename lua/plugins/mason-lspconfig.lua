local opts = {
	ensure_installed = {
	  "rust_analyzer",
		"bashls",
		"html",
		"cssls",
		"lua_ls",
		"emmet_ls",
		"jsonls",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
