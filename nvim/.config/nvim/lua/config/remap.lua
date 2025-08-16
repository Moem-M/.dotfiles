vim.g.mapleader = " "

vim.cmd([[colorscheme tokyonight]])

-- telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set(
    "n",
    "<leader>ff",
    ":Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>",
    { desc = "Telescope find files" }
)
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- neotree keymaps
vim.keymap.set("n", "<leader>n", ":Neotree filesystem toggle right<CR>")
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- lsp keymaps
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

require("telescope").load_extension("ui-select")
