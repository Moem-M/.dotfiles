return {
	{
		"mason-org/mason.nvim",
		opts = {
			firewall = {
				enabled = true,
			},
		},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				settings = {
					Lua = {
						workspace = {
							userThirdParty = { "~/.dotfiles/nvim/lua_addons" },
							checkThirdParty = "Apply",
						},
					},
				},
			})
			vim.lsp.enable({ "lua_ls", "ts_ls", "cssls", "html", "jsonls", "jdtls", "bashls", "clangd", "pylsp"})
		end,
	},
}
