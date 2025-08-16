return {
    {
        "mason-org/mason.nvim",
        opts = {}
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
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_la.setup({})
            lspconfig.cssls.setup({})
            lspconfig.html.setup({})
            lspconfig.jsonls.setup({})
        end
    },
}
