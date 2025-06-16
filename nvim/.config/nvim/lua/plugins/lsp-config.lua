return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "ts_ls", "cssls", "html", "jsonls" },
            automatic_enable = true,
        },

        dependencies = {"neovim/nvim-lspconfig",}
    },
}
