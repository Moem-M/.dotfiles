return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls", "cssls", "html", "jsonls" },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("blink.cmp").get_lsp_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities,
            settings = {
                    Lua = {
                        workspace = {
                            userThirdParty = {"~/.dotfiles/nvim/lua_addons"},
                            checkThirdParty = "Apply"
                        }
                    }
                }
            })
            lspconfig.ts_la.setup({capabilities = capabilities})
            lspconfig.cssls.setup({capabilities = capabilities})
            lspconfig.html.setup({capabilities = capabilities})
            lspconfig.jsonls.setup({capabilities = capabilities})
        end,
    },
}
