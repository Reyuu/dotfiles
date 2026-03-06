require("config.lazy")

vim.wo.number = true
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.g.lazyvim_check_order = false

local harpoon = require("harpoon")

harpoon:setup()


require("commander").add({
    {
        desc = "Open commander",
        cmd = require("commander").show,
        keys = { "n", "<Leader>fc" }, -- mnemonic: find command
    },
    {
        desc = "Search inside current buffer",
        cmd = "<CMD>Telescope current_buffer_fuzzy_find<CR>",
        keys = { "n", "<Leader>fl" }, -- mnemonic: find (in) lines
    },
    {
        desc = "Find files",
        cmd = "<CMD>Telescope find_files<CR>",
        keys = { "n", "<Leader>ff" }, -- find file
    },
    {
        desc = "LSP code actions",
        cmd = "<CMD>Telescope lsp_code_actions<CR>",
        keys = { "n", "<Leader>ca "}, -- command actions
    },
    {
        desc = "Switch open buffers",
        cmd = "<CMD>ArenaToggle<CR>",
        keys = { "n", "<Leader>fb" }, -- find buffer
    },
    {
        desc = "Open terminal modal",
        cmd = require("FTerm").toggle,
        keys = { "n", "<Leader>tw" } -- terminal window
    },
    {
        desc = "Search all",
        cmd = require("search").open,
        keys = { "n", "<Leader>fa" },
    },
    {
        desc = "Undo",
        cmd = "<CMD>undo<CR>",
        keys = { "n", "<Leader>z" },
    },
    {
        desc = "Redo",
        cmd = "<CMD>redo<CR>",
        keys = { "n", "<Leader>r" },
    },
    {
        desc = "Toggle file tree",
        cmd = "<CMD>Neotree filesystem toggle<CR>",
        keys = { "n", "<Leader>b" },
    },
    {
        desc = "Force quit",
        cmd = "<CMD>qa!<CR>",
        keys = { "n", "<Leader>qq" }
    }
})

require("commander").setup()
