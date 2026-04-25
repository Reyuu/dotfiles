local wk = require("which-key")
local telescope_builtins = require('telescope.builtin')

vim.g.mapleader = " "

wk.add({
	mode = {"n", "v"},
	{"<leader>?", function() require("which-key").show({global=true}) end, desc = "Keymap help"},

	--lsp_signature
	{"<leader>s", function() vim.lsp.buf.hover() end, desc="Toggle signature help window"},

	{"<leader>tw", function() vim.cmd("ToggleTerm direction=float") end, desc="Show terminal window"},

	-- Telescope 
	{"<leader>ff", telescope_builtins.find_files, desc = "Find files"},
	{"<leader>fg", telescope_builtins.live_grep, desc = "Live grep"},
	{"<leader>fb", telescope_builtins.buffers, desc = "Buffers"},
	{"<leader>fh", telescope_builtins.help_tags, desc = "Help tags"},
	
	-- VSCode-like keybinds
	{ "<C-/>", "gcc", desc = "Toggle comment line", mode = "n", remap = true },
	{ "<C-/>", "gc", desc = "Toggle comment selection", mode = "v", remap = true },
	
	{ "<C-[>", "<<", desc = "Outdent line", mode = "n"},
	{ "<C-]>", ">>", desc = "Indent line", mode = "n"},
	{ "<C-[>", "<gv", desc = "Outdent selection", mode = "v"},
	{ "<C-]>", ">gv", desc = "Indent selection", mode = "v"},

	{ "<M-UP>", "<cmd>lua MiniMove.move_line('up')<CR>", desc = "Move current line up", mode = "n"},
	{ "<M-DOWN>", "<cmd>lua MiniMove.move_line('down')<CR>", desc = "Move current line down", mode = "n"},
	{ "<M-UP>", "<cmd>lua MiniMove.move_selection('up')<CR>", desc = "Move selection up", mode = "v"},
	{ "<M-DOWN>", "<cmd>lua MiniMove.move_selection('down')<CR>", desc = "Move selection down", mode = "v"},
	{ "<M-S-DOWN>", "yyp", desc = "Duplicate line down", mode = "n" },
	{ "<M-S-UP>", "yyP", desc = "Duplicate line up", mode = "n"},

	{ "<leader>|", "gA", desc = "Align interactively", remap = true },
	{"<leader>qq", function() vim.cmd [[qa!]] end, desc = "Force quit"}
})

wk.add({
	mode={"t"},
	{"<esc>", function() vim.cmd([[<C-\><C-n>]]) end, desc = "Go to normal mode"},
})


