require("neo-tree").setup({
	close_if_last_window = false,
	enable_cursor_hijack = false,
	window = {
		position = "left",
		width = 30,
	},
	buffers = {
		follow_current_file = {
			enabled = true
		},
		group_empty_dirs = false,
	},
	filesystem = {
		follow_current_file = {
			enabled = true
		},
	},
})
