return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.prettier, -- JS/TS/JSON/HTML/CSS
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.clang_format, -- C/C++
				null_ls.builtins.formatting.google_java_format, -- Java

				-- Linters / Diagnostics
				null_ls.builtins.diagnostics.eslint_d, -- JS/TS
				null_ls.builtins.diagnostics.luacheck, -- Lua
				null_ls.builtins.diagnostics.stylelint, -- CSS
				null_ls.builtins.diagnostics.tidy, -- HTML
			},
		})
	end,
}
